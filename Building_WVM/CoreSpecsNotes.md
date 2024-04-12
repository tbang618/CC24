# Core Spec Notes
https://www.w3.org/TR/wasm-core/

### Values
'Numbers' are another way of saying floating point. To see details about floating point numbers see https://ieeexplore.ieee.org/document/4610935.

#### 32-bit values
- float
- integer
- boolean
- memory address

#### 64-bit values
- float, 
- integer

#### 128-bit values
- 'vector type representing different types of packed data'
either
- 2  64-bit float
- 4  32-bit float
- 2  64-bit integer
- 4  32-bit integer
- 8  16-bit integer
- 16  8-bit integer 

#### References
'Finally, values can consist of opaque references that represent pointers towards different sorts of entities. Unlike with other types, their size or representation is not observable.'


### Instructions
- stack machine where instructions manipulate an implicit operand stack
- fall into two categories

#### Simple Instructions
'Simple instructions perform basic operations on data. They pop arguments from the operand stack and push results back to it.'

#### Control Instructions
'Control instructions alter control flow. Control flow is structured, meaning it is expressed with well-nested constructs such as blocks, loops, and conditionals. Branches can only target such constructs.'

### Traps
- cannot be handled by webassembly code
- typically caught and handled by the outside environmnent

### Functions
- takes a sequence of values as parameters
- returns a sequence of values as results
- can call eachother (recursively too)
    - meaning we need a call stack (implicit)
- 'may also declare mutable local variables that are usable as virtual registers'

### Tables
- array of opaque values 
- of a particular element type

#### Element types
- there is just one currently
1. untyped function reference / refernce to an external host value
'Thereby, a program can call functions indirectly through a dynamic index into a table. For example, this allows emulating function pointers by way of table indices.

### Linear Memory
- contiguous mutable array of raw bytes
- given a initial size, can be grown dynamically
- program can load/store from/to to a lineary memory at any byte address
- unaliagned load/stores are allowed
- trap accours if access is out of bounds

#### Storage size
'Integer loads and stores can specify a storage size which is smaller than the size of the respective value type.'

### Modules
'A WebAssembly binary takes the form of a module that contain definitions of:
- functions 
- tables
- linear memories
- mutable or immutable global variables.

and optionally
+ initialization data for their memories or tables that takes the form of segments copied to given offsets
+ a start function that is automatically executed


- 'Definitions can also be imported, specifying a module/name pair and a suitable type'
- 'Each definition can optionally be exported under one or more names'

### Embedder
- 'A WebAssembly implementation will typically be embedded into a host environment'
the environment defines:
- how loading of modules is initiated
- how imports are provided (including host-side definitions)
- how exports can be accessed

'However, the details of any particular embedding are beyond the scope of this specification, and will instead be provided by complementary, environment-specific API definitions.' (such as the WASI spec)









