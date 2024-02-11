# WASM Compilation Toolchain Guide
This guide is meant to clarify the process of starting with source code and ending with
web assembly being run on your PC. I think to some this may seem very obvious how it's
done, but I found the process to be surprisingly nuanced if your not experienced in 
how compilation works. This guide serves to highlight these nuances in hopes to arrive
at a crystal clear understanding going forward to the bigger parts of our research project.

## 1. Compile the source code into web assembly
## 2. Run the web assembly code on a web assembly stack-based virtual machine

Simple enough right? Well..

![image](https://github.com/tbang618/CC24/assets/78170299/f8875d44-1fe0-4239-98b7-11ffd3d8f39d)
https://webassembly.org/features/

It can run on most major browser engines such as Google's chrome V8 engine which according to Google's 
v8 website "implements ECMAScript and WebAssembly". But it can also run outside of browser environments,
such as on the Wasmtime interpreter. 

But what exactly is being implemented? We can know by looking at the Web Assembly Specifications,
or better known as the **Core WebAssembly Specification**.
https://webassembly.github.io/spec/core/index.html

Looking at the introduction page:

![image](https://github.com/tbang618/CC24/assets/78170299/07496c9b-efb3-4e4b-8392-72936de0e7cb)
"...It does not, however, define how WebAssembly programs can interact with a specific environment
they execute in, nor how they are invoked from such an environment. Instead, this specification is 
complemented by additional documents defining interfaces to specific embedding environments such as 
the Web. These will each define a WebAssembly application programming interface (API) suitable for 
a given environment."
"WebAssembly provides no ambient access to the computing environment in which code is executed. 
Any interaction with the environment, such as I/O, access to resources, or operating system calls, 
can only be performed by invoking functions provided by the embedder and imported into a WebAssembly 
module."
It notes that it is up to the embedder to establish security notices and because WebAssembly is meant
to be translated to machine code, it is vulnerable to side channel attacks.

So we need a 'WebAssembly application programming interface"
https://webassembly.org/specs/

![image](https://github.com/tbang618/CC24/assets/78170299/a98c22a8-9daf-4d09-a089-eedeb076c8d0)

With the core specification, it becomes 
- Core WebAssembly Specification -> https://www.w3.org/TR/wasm-core/

### The 'in-browser' api:
- Javascript API                 -> https://webassembly.github.io/spec/js-api/index.htm
- Web API                        -> https://webassembly.github.io/spec/web-api/index.html

Go to any of these documents and you will see "This is part of a collection of related documents: 
the Core WebAssembly Specification, the WebAssembly JS Interface, and the WebAssembly Web API."
Note: these are the adopted W3C documents, the https://webassembly.github.io/spec/core/index.html link
describes the *current* draft specifications (not yet adopted).

### The 'out-of-browser' api aka WASI:
- WASI API                       -> https://github.com/WebAssembly/WASI/blob/main/README.md

# 1. Compile the source code into web assembly

Okay, lets go back to step one, compile the source code to web assembly. To do that we need to answer
- What language is being compiled? i.e C/C++, Rust, Python...
- Which specification is it being compiled for? Either for the 'browser' api or the non-browser WASI api


## Emscripten
https://emscripten.org/docs/introducing_emscripten/about_emscripten.html
"Emscripten is a complete Open Source compiler toolchain to WebAssembly. Using Emscripten you can:
Compile C and C++ code, or any other language that uses LLVM, into WebAssembly, and run it on the Web, Node.js, or other Wasm runtimes.
Compile the C/C++ runtimes of other languages into WebAssembly, and then run code in those other languages in an indirect way 
(for example, this has been done for Python and Lua)."

Emscripten is primarily focused on compiling web assembly for the browser api but they have been working on support for producing what they
call 'standalone Wasm' files that are to WASI spec.

### For Browser api targeted compilation example follow this page
https://emscripten.org/docs/getting_started/Tutorial.html#

### For WASI api targeted compilation example follow this page
https://v8.dev/blog/emscripten-standalone-wasm#running-in-wasm-runtimes
"Emscripten uses WASI APIs as much as possible, so programs like this end up using 100% WASI and can run in WASI-supporting runtimes 
(see notes later on what programs require more than WASI).
also found at this page:
![image](https://github.com/tbang618/CC24/assets/78170299/723b7ac0-d18a-481c-a911-064c40f56b79)


### Just out of curiosity, comparing assembly files of same source but different target specification
TODO

## 2. Run the web assembly code on a web assembly stack-based virtual machine

### For Browser api, well, just run it on your browser or node.js server

### For WASI api, run it on a WASI compliant runtime such as 
- Wasmtime
- WAVM
- wasmer
- ...







