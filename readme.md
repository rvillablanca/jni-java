# JNI Java Example

This project shows how connect java with C code.


## Run

Application can be executed with a simple `make` instruction.

```
rodrigo@kdubuntu:~/desarrollo/personal/jni-java$ make
rm *.o *.so *.class -vf
removed 'HelloWorld.o'
removed 'libhelloworld.so'
removed 'HelloWorld.class'
javac HelloWorld.java
gcc -c -Wall -Werror -fPIC -I/home/rodrigo/.sdkman/candidates/java/current/include -I/home/rodrigo/.sdkman/candidates/java/current/include/linux *.c
gcc -shared -o libhelloworld.so *.o
java -Djava.library.path=. HelloWorld
Library Path: .
Hello Rodrigo Villablanca
rodrigo@kdubuntu:~/desarrollo/personal/jni-java$
```

## Run without make

```
javac HelloWorld.java
gcc -c -Wall -Werror -fPIC -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux *.c
gcc -shared -o libhelloworld.so *.o
java -Djava.library.path=. HelloWorld
```

## Compile and runtime Dependencies

* Java SDK
* gcc C compiler
* make (optional)
