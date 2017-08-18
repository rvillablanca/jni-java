all: clean compile build

compile:
	gcc -c -Wall -Werror -fPIC -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux *.c

build:
	gcc -shared -o libhelloworld.so *.o

clean:
	rm *.o *.so -vf