#include <jni.h>
#include <stdio.h>
#include "HelloWorld.h"

JNIEXPORT void JNICALL Java_HelloWorld_hello(JNIEnv * env, jobject obj, jstring name) {
    const char *cname = (*env)->GetStringUTFChars(env, name, NULL);
    printf("Hello %s\n", cname);
    return;
}