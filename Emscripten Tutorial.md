# Emscripten Tutorial
Note that the current Emscripten Tutorial is a little out-of-date.  I'll try to indicate where differences occur.

## About Emscripten
**Emscripten** is a *compiler toolchain*: a set of tools (a "chain of tools") that is used to create a programmed product (i.e. an executable or binary file).  Emscripten specifically targets generating **WebAssembly** programs.

Compile the C/C++ **runtimes** of other languages into WebAssembly, and then run code in those other languages in an _indirect_ way.

### The Toolchain

Emscripten itself uses the **LLVM** and **Clang**:

- *LLVM* is a compiler toolchain (or Compiler Infrastructure) that provides a library for taking a front-end source code and generating code in a format called *intermediate representation* or IR.  Other LLVM APIs can then use that IR for multiple purposes.  The popular use is to convert the IR into convert into the binary for either the host machine or another machine.
- *Clang* is the front-end interface to LLVM for C-like languages.  Emscripten provides the **Emscripten Compiler Frontend (emcc)** which replaces Clang for C-like languages.  Actually, emcc itself includes Clang, so it may be thought of as a wrapper around Clang.

To use Emscripten, you need to install the **Emscripten SDK**, which is the entire toolchain, including the emcc frontend and the LLVM set to generate WASM binaries (among other things useful for WebAssembly develoment), and other helpful libraries.

### Porting Code
Emscripten allows for porting code to the browser or to independent WebAssembly runtimes.  The support for C and C++ libraries is fairly comprehensive, but there are limitations to be wary of. 

## Install Emscripten SDK
Download and install from the [emscripten download page](https://emscripten.org/docs/getting_started/downloads.html#sdk-download-and-install).

The installation is done with Python scripts, so you do need Python installed on your system, as well as Make.

If you're on Linux, many resources online recommend manually installing the SDK rather than installing from your distro's package manager in order to have the latest updates.  Make sure to include the path to SDK as part of your shell's runtime environment; emscripten provides a shell script for this:

` source ~/.local/lib/emcc/emsdk/emsdk_env.sh`
## Basic Tutorial
The primary interface for using emscripten is the **Emscripten Comiler Frontend (emcc)**.

Note that part of the offical Emscripten tutorial is done in the actually SDK install location `./emcc`, which includes additional test-files to make the tutorial work correctly.  

Check which Emscripten you have installed:
``` shell
	 which emcc
	 emcc -v
```

Let's have a simple C program `hello.c` we want to port to the browser:
``` C
#include <stdio.h>

int main() {
	printf("hello world!\n");
	return 0;
}
```

We can use Emscripten to produce a simple Javascript/WASM version of this code:
``` Shell
	emcc ./hello.c
```

We should now have two files: `a.out.js` and `a.out.wasm`.  Now you can run the `.js` file in an JavaScript runtime, like Node.js:
``` Shell
	node ./a.out.js
```

Or you can embed the `.js` file into a web-page as usual:
``` html
<script src="a.out.js"></script>
```

And provide it through a web-server, like the one provided by Python:
``` Shell
python -m http.server 8080
```

To view output, open the browser console with the F12 key (or through the context menu).  ==Note that simply opening the `.html` file in a browser *will not work*, which will be explained further below.==

Rather than write our own HTML file, Emscripten can generate a test HTML file for us:

``` Shell
emcc test/hello.c -o hello.html
```

HTML output is not limited to text: see the official tutorial for an example that outputs a colorful canvas element.

### Using Files
..

Because JavaScript in the browser is *sandboxed*, it can't access files from the system filesystem.  Instead, the files must be *preloaded* into the browser's virtual system; simply, for now, something like `open("some_file.txt")` works.