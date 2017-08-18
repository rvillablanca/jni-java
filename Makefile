default: run

all: clean compile build

compile:
	javac HelloWorld.java
	gcc -c -Wall -Werror -fPIC -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux *.c

build:
	gcc -shared -o libhelloworld.so *.o

run: all
	java -Djava.library.path=. HelloWorld

clean:
	rm *.o *.so *.class -vf