PAPER_DIR = docs/paper
all: demo

paper: 
	cd $(PAPER_DIR) && make pdf && make open

paper_clean:
	$(MAKE) -C $(PAPER_DIR) clean

sync:
	rsync -r ./ galaxy:/home/benzh/repos/PtOWSN
demo:
	git log | grep Demo -B 3

debug:
	git log | grep Edward -B 3
