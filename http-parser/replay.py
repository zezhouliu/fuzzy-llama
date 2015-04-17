import os
import subprocess
import re

def main():
	p = subprocess.Popen(['ktest-tool', 'klee-last/test000001.ktest'], stdout=subprocess.PIPE)
	s, err = p.communicate()
	s = s.split('\n')
	pattern = r"'(.*?)'"
	m = re.search(pattern, s[-2])
	arg = m.group().replace("'", "")
	subprocess.call(['./replay', arg])
	

if __name__ == "__main__":
	main()
