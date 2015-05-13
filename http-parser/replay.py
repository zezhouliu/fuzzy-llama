import os
import sys
import subprocess
import re
from operator import itemgetter
import pprint
pp = pprint.PrettyPrinter(indent=4)


badTests = ["klee-last/test000088.assert.err", "klee-last/test000119.ptr.err", "klee-last/test000668.assert.err", "klee-last/test001014.assert.err", "klee-last/test001561.assert.err", "klee-last/test000102.ptr.err", "klee-last/test000125.assert.err", "klee-last/test000739.assert.err", "klee-last/test001306.assert.err", "klee-last/test001635.assert.err", "klee-last/test000110.assert.err", "klee-last/test000456.assert.err", "klee-last/test000969.assert.err", "klee-last/test001344.assert.err", "klee-last/test001658.assert.err", "klee-last/test000116.ptr.err", "klee-last/test000596.assert.err", "klee-last/test001013.assert.err", "klee-last/test001526.assert.err"]


# Returns a symbolic argument that
def getItemByName(name, lst):
	return filter(lambda x: x["name"] == name, lst)[0]


def removeSingleQuotes(el):
	return el.replace("'", "")


def main():
	replayTarget = sys.argv[1]
	for f in badTests:
		replayCandidate = f.split(".")[0] + ".ktest"
		p = subprocess.Popen(['ktest-tool', replayCandidate], stdout=subprocess.PIPE)
		s, err = p.communicate()


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
		parser["data"] = parser["data"].replace("\\x", "")

		arg0 = getItemByName("arg0", symbolicObjects)
		arg0["data"] = arg0["data"][0]+arg0["data"][1]

		pp.pprint(parser)
		pp.pprint(arg0)

		subprocess.call([replayTarget, arg0["data"], parser["data"]])
	

if __name__ == "__main__":
	main()
