public class HelloWorld {
    public native void hello(String name);

    public static void main(String[] args) {
        new HelloWorld().hello("Rodrigo Villablanca");
    }

    static {
        System.out.println("Library Path: " + System.getProperty("java.library.path"));
        System.loadLibrary("helloworld");
    }
}