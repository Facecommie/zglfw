I just dont like the individual variables for the inputs, wrapped them in an enum. Also just making it a bit easier for me

<h1 align="center">zGLFW</h1>
<p align="center">A thin, idiomatic wrapper for GLFW. Written in Zig, for Zig!</p>

# Why write a wrapper?
While Zig is PERFECTLY capable of simply `@cImport`ing glfw3.h and using it in your application, I think it lacks a lot of cleanliness and succinctness that can be expressed with Zig. I decided to write this wrapper to provide GLFW with a nicer interface, error handling options, and quality of life changes (for example `[]const u8` instead of `[*c]const u8`). It also uses nicely named constants in place of `#define`s.

zGLFW is NOT 100% tested. I am happy to fix any errors that may arise, and I will accept contributions! Errors that arise from GLFW will be printed to `stderr`.

# Add this to your build.zig

```zig
const glfw_mod = b.addModule("root", .{
    .root_source_file = b.path("vendor/zglfw/src/glfw.zig"),
    .target = target,
    .optimize = optimize,
    .link_libc = true,
});
exe.addLibraryPath(b.path("vendor/zglfw/libs/glfw"));
exe.linkSystemLibrary("glfw3");
exe.linkLibC();
exe.root_module.addImport("zglfw", glfw_mod);
```

# Documentation

I would suggest you look into the `glfw.zig` file themselves, as most of the changes are simple syntactically, but I have made some comments in cases where it may be different than you expect. Obviously [GLFW's Documentation](https://www.glfw.org/documentation.html) should cover most things that you want to know.
