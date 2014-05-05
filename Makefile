PAPER_DIR = docs/paper
all: demo

paper:
	$(MAKE) -C $(PAPER_DIR) open

paper_clean:
	$(MAKE) -C $(PAPER_DIR) clean

sync:
	rsync -r ./ galaxy:/home/benzh/repos/PtOWSN
demo:
	git log | grep Demo -B 3

fuck:
	git log | grep Edward -B 3
