# Core Spec Notes
https://www.w3.org/TR/wasm-core/

## 1.2.1 Concepts

### Values
'Numbers' are another way of saying floating point. To see details about floating point numbers see https://ieeexplore.ieee.org/document/4610935.

#### 32-bit values
- float
- integer
- boolean
- memory address

#### 64-bit values
- float 
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

## 1.2.2 Sematic Phase

### Decoding
- 'WebAssembly modules are distributed in a binary format'
- 'Decoding processes that format and converts it into an internal representation of a module'
- 'In this specification, this representation is modelled by abstract syntax, but a real implementation could compile directly to machine code instead.'
-  The grammar notation of the abstract syntax is shown in part 2.

### Validation
- 'Validation checks a number of well-formedness conditions to guarantee that the module is meaningful and safe'
- type checking of functions
- and their instruction sequence (i.e operand stack should be used consistently)

### Execution
#### Instantiation
- 'A module instance is the dynamic representation of a module, complete with its own state and execution stack'
- 'Instantiation executes the module body itself, given definitions for all its imports'
- globals, memories and tables initialized
- start function invoked if defined
- 'returns the instances of the module's exports', referring to the modules exported definitions (not to be confused with the actual module instance itself)
- remember, a definition isn't just a definition of a function, it can be a definition of a function, table, linear memory or mutable/immutable variables


#### Invocation
- we can invoke an exported function on a module instance 
- supply required arguments and return respective results

- assuming the call stack is global, what does the per module instance 'execution stack' refer to?
- or I think it is the case that each module has its own separate execution stack (call stack)
- '...on a module instance' I think that means that the execution stack of module that contains the invoked method is used rather then of the invoker module stack

- 'Instantiation and invocation are operations within the embedding environment'

## 2 Structure
- chapter 2 is probably the most bulky and important part
- I will write notes on specific areas where I think it to be beneficial
- its better to just read it in its entirety but not worry about forgetting things
- and instead refer back when actually implementing a WVM

- "If the same meta variable or non-terminal symbol appears multiple times in a production, then all those occurrences must have the same instantiation. (This is a shorthand for a side condition requiring multiple different variables to be equal.)"
- I believe this means if we had *sym1* := A | B
- and *sym2* :== *sym1* | *sym1* | C
- then depending on wheter *sym1* is instantiated as A or B we get
- either *sym2* :== A | A | C or *sym2* :== B | B | C but not something like *sym2* :== A | B | C


- "When given a sequence x^n^, then the occurrences of x in a sequence written (A~1~ x A~2~)^n^ are assumed to be in point-wise correspondence with x^n^ (similarly for x^*^, x^+^, x^?^).
- if for example, x^2^ becomes (x~0~ x~1~)
- then I think, for example, (A~1~ x A~2~)^2^ expands to two iterations that look like (A~1~ x~0~ A~2~) (A~1~ x~1~ A~2~)
- that this is what is mean by 'point-wise correspondence'
- 'This implicitly expresses a form of mapping syntactic constructions over a sequence.'











