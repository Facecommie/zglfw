I just dont like the individual variables for the inputs, wrapped them in an enum. Also just making it a bit easier for me. If theres any bugs relating to what I did, feel free to report them.

<h1 align="center">zGLFW</h1>
<p align="center">A thin, idiomatic wrapper for GLFW. Written in Zig, for Zig! (With enums)</p>

# Add this to your build.zig

```zig
const glfw_mod = b.addModule("root", .{
    .root_source_file = b.path("vendor/zglfw/src/glfw.zig"),
    .target = target,
    .optimize = optimize,
});
exe.addLibraryPath(b.path("vendor/zglfw/libs/glfw/windows")); // Windows only, you'll need to download MacOS/Linux version yourself
exe.linkSystemLibrary("glfw3");
exe.root_module.addImport("zglfw", glfw_mod);
```

# Documentation

I would suggest you look into the `glfw.zig` file themselves, as most of the changes are simple syntactically, but I have made some comments in cases where it may be different than you expect. Obviously [GLFW's Documentation](https://www.glfw.org/documentation.html) should cover most things that you want to know.
