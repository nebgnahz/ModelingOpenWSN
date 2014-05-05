all: demo

sync:
	rsync -r ./ galaxy:/home/benzh/repos/PtOWSN
demo:
	git log | grep Demo -B 3

fuck:
	git log | grep Edward -B 3
