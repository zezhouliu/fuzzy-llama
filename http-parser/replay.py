import os
import sys
import subprocess
import re
from operator import itemgetter
import pprint
pp = pprint.PrettyPrinter(indent=4)
from itertools import islice
import binascii

# Returns a symbolic argument that
def getItemByName(name, lst):
	return filter(lambda x: x["name"] == name, lst)[0]


def removeSingleQuotes(el):
	return el.replace("'", "")

def removeBlanks(lst):
	return filter(lambda x: x != '', lst)


def main():
	if len(sys.argv) < 2:
		print "Please Specify Replay Target"

	replayTarget = sys.argv[1]
	badTests = []

	if len(sys.argv) < 3:
		badTests = [f for f in os.listdir("./klee-out-41") if re.match(r'(.*?)\.err', f)]
	else:
		for i in range(2,len(sys.argv)):
			badTests.append(sys.argv[i])

	for f in badTests:
		replayCandidate = "./klee-out-41/" + f.split(".")[0] + ".ktest"
		print replayCandidate
		p = subprocess.Popen(['ktest-tool', replayCandidate], stdout=subprocess.PIPE)
		s, err = p.communicate()

		pp.pprint(s)

		# Find all of the symbolic objects
		s = s.split('object')

		# Get the number of symbolic elements
		num = max([int(m.group()[0]) for el in s for m in [re.search("\d:", el)] if m])+1
		symbolicObjects = [None]*num

		names = map(removeSingleQuotes, [m.group() for el in s for m in [re.search("(?<=name: )(.*)", el)] if m])
		sizes = [int(m.group()) for el in s for m in [re.search("(?<=size: )(.*)", el)] if m]
		datas = map(removeSingleQuotes, [m.group() for el in s for m in [re.search("(?<=data: )(.*)", el)] if m])

		# pp.pprint(symbolicObjects)

		for i in range(num):
			d = dict()
			d["name"] = names[i]
			d["size"] = sizes[i]
			d["data"] = datas[i]
			symbolicObjects[i] = d


		parser = getItemByName("parser", symbolicObjects)
		arg0 = getItemByName("arg0", symbolicObjects)
		pp.pprint(parser)
		pp.pprint(arg0)
		print 
		sys.stdout.flush()

		tmp = parser["data"].split("\\x")
		real = []
		for el in tmp:
			if len(el) == 2:
				try:
					real.append(int(el, 16))
				except:
					real.append(el)
			else:
				builder = ''
				for i in range(len(el)):
					builder += el[i]
					if((i+1)%2 == 0):
						try:
							real.append(int(builder, 16))
						except:
							real.append(builder)
						builder = ''
				if(len(builder) > 0):
					real.append(ord(builder))

		real = removeBlanks(real)
		real = map(str, real)
		real[:0] = [str(len(real))]
		real[:0] = arg0["data"][:1]
		real[:0] = str(1)
		real[:0] = [replayTarget]
		pp.pprint(real)
		subprocess.call(real)
	

if __name__ == "__main__":
	main()
