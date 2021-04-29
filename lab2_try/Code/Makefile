# GNU make手册：http://www.gnu.org/software/make/manual/make.html
# ************ 遇到不明白的地方请google以及阅读手册 *************

# 编译器设定和编译选项
CC = gcc
FLEX = flex
BISON = bison
CFLAGS = -std=c99

# 编译目标：src目录下的所有.c文件
CFILES = $(shell find ./ -name "*.c")
OBJS = $(CFILES:.c=.o)
LFILE = $(shell find ./ -name "*.l")
YFILE = $(shell find ./ -name "*.y")
LFC = $(shell find ./ -name "*.l" | sed s/[^/]*\\.l/lex.yy.c/)
YFC = $(shell find ./ -name "*.y" | sed s/[^/]*\\.y/syntax.tab.c/)
LFO = $(LFC:.c=.o)
YFO = $(YFC:.c=.o)

parser: syntax $(filter-out $(LFO),$(OBJS))
	$(CC) -o parser $(filter-out $(LFO),$(OBJS)) -lfl -ly

syntax: lexical syntax-c
	$(CC) -c $(YFC) -o $(YFO)

lexical: $(LFILE)
	$(FLEX) -o $(LFC) $(LFILE)

syntax-c: $(YFILE)
	$(BISON) -o $(YFC) -d -v $(YFILE)

-include $(patsubst %.o, %.d, $(OBJS))

# 定义的一些伪目标
.PHONY: clean test
test:
	make parser
	./parser ../Test/test1.cmm
	./parser ../Test/test2.cmm
	./parser ../Test/test3.cmm
	./parser ../Test/test4.cmm
	./parser ../Test/test5.cmm
	./parser ../Test/test6.cmm

debug:
	make parser
	./parser ../Test/test0.cmm 1>../Output/test0.out 2> ../Log/test0.log
	./parser ../Test/test1.cmm 1>../Output/test1.out 2> ../Log/test1.log
	./parser ../Test/test2.cmm 1>../Output/test2.out 2> ../Log/test2.log
	./parser ../Test/test3.cmm 1>../Output/test3.out 2> ../Log/test3.log
	./parser ../Test/test4.cmm 1>../Output/test4.out 2> ../Log/test4.log
	./parser ../Test/test5.cmm 1>../Output/test5.out 2> ../Log/test5.log
	./parser ../Test/test6.cmm 1>../Output/test6.out 2> ../Log/test6.log
	./parser ../Test/test7.cmm 1>../Output/test7.out 2> ../Log/test7.log
	./parser ../Test/test8.cmm 1>../Output/test8.out 2> ../Log/test8.log
	./parser ../Test/test9.cmm 1>../Output/test9.out 2> ../Log/test9.log
clean:
	rm -f parser lex.yy.c syntax.tab.c syntax.tab.h syntax.output
	rm -f $(OBJS) $(OBJS:.o=.d)
	rm -f $(LFC) $(YFC) $(YFC:.c=.h)
	rm -f *~
