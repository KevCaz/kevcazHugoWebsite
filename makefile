cur = $(shell pwd)
idf = $(shell head -n 1)
psw = $(shell head -n 2 | tail -n 1)
adr = $(shell tail -n 1)


all: public/index.html

public/index.html: static/* content/*/* themes/*
	rm -rf public/
	hugo

publish:
	ncftpput -Rz -u idf -p psw adr ./ $(cur)/public/*;

clean:
	rm -rf public/