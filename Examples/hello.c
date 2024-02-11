// emcc hello.c -o hello_wasi.wasm
// will give the standalone wasi spec wasm file
// which can run on a wasi compliant wasm vm

// emcc hello.c -o hello_browser.js
// will produce both a hello_browser.js file
// and a hello_browser.wasm file 
// "...WebAssembly file containing the compiled code,
// and the first is a JavaScript file containing the
// runtime support to load and execute it."

// emcc hello.c -o hello_browser.html
// "Emscripten can also generate HTML for testing embedded 
// JavaScript. To generate HTML, use the -o (output) command 
// and specify an html file as the target file"

//"Unfortunately several browsers (including Chrome, Safari, 
// and Internet Explorer) do not support file:// XHR requests, 
// and can’t load extra files needed by the HTML (like a .wasm 
// file, or packaged file data as mentioned lower down). For 
// these browsers you’ll need to serve the files using a local 
// webserver and then open http://localhost:8000/hello.html)."

// wavm run hello_wasi.wasm
// node hello_browser.wasm

#include <stdio.h>

int main() {
  printf("hello, world!\n");
  return 0;
}