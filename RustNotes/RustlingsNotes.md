# Rustlings Guide

> [!TODO]
> Not finished, will need to be cleaned up and broken up into parts.

This "guide" is intended to be read while doing the Rustlings Course (largely reminders to myself as a retake the course many times early in my Rustacean career).  Most of my experience is in C/C++, so I make most of allusions towards these langauges.

This is accurate for Rustlings version 5.6.1
## Installation
..

## Start
..
### Intro 1 
Some introductory notes on Rustlings.  To begin, comments in Rust:
- In-line comments are marked with `//`
- Multi-line comments are wrapped with `/* <code> */`

### Intro 2
The macro `println!` acts similar to the function `printf()` in the C language, where you can format output text with arguments:
``` Rust
println!("Hello {}", "World!");
```

## Variables
### Variables 1: Declaring Variables
Variables are declared with the `let` keyword.
### Variables 2: Variable Types
The compiler can usually infer the type of a declared variable, but we can explicitly say which type.  This is called **type annotation**.  For example, in this exercise:
``` Rust
let x: i32 = 10;
```
### Variables 3: Binding Values
Variables need to be bound to a value before they can used, as in most programming languages.
### Variables 4: Mutable Variables
In Rust, variables are immutable by default.  To make a variable mutable, we use the `mut` keyword.  
### Variables 5: Shadowing
**Shadowing** allows the reuse of a variable name.  This is useful for:
- changing a variable's type
- reusing the same variable name

To shadow, re-declare the variable with `let`.
### Variable 6: Constants
Constants in Rust are declared with the `const` keyword.
## Functions
### 1. Declaring Functions
Functions are declared using the syntax:, known as the **function signature**:
``` Rust
fn function_name(<parameter> : <type>) -> <return-type> {
	println!("Stuff");
}
```

Unlike the C language, functions don't need to be declared before their use.
### 2. Parameters
Functions can be defined with parameters.  These parameters need type annotation.
### 3.  Arguments 
Function calls require all defined parameters, with matching types.
### 4. Return Values
A function needs to declare the type of its return value.
### 5. Expressions vs Statements
In Rust, a **statement** is a line of code that does not output a value.  An **expression** is a line of code that outputs a value.  

A statement is distinguished by ending with a semi-colon (`;`) as in the following example:
```Rust
3 * 3;
```

An expression does not end with a semi-colon:
``` Rust
3 * 3
```

A function will return the first expression in its body, or it will return the first statement marked with the keyword `return`.

## Control Flow
### 1. If-Else 
The **guards** in an **if-else** statement do not need be encased in parentheses (but you can if you want), however they do need to be **boolean** expressions.  Unlike C, where `0` is `false` and every other value is `true`, Rust has explicit boolean types.

The branches are called **conditionals**, which must be expressions and need to be encased in *curly-brackets*.

### 2. If-Else Conditionals
Multiple conditionals are possible.  Conditionals need to return/express the same type.
### 3. If-Else Conditionals Continued
This exercise reinforces the lesson of the previous exercise.
## Quiz 1
Putting everything we learned so far together.

---
## Primitive Types
Rust has a few **primitive types**; these are *built-in* to Rust.  Later we'll learn types that are provided by the **Standard Library**.

We'll see some values have functions that operate on themselves; these are **methods**, similar to those in Java or C++.
### 1. Booleans
Formally introducing `bools`:
- `True`
- `False`

### 2. Characters
**Characters**, like in C, are enclosed in single-quotation marks.  Some methods are introduced in this exercise:
- `.is_alphabetic()` returns `true` if the character is a alphabet character.
- `.is_numeric()` returns `true` if the character is a number character.

### 3. Arrays
**Arrays** are one of Rust's primitive **compound types**: objects that hold other elements.  Arrays collect elements of the *same type*.

To get the length of an array, use the trait `.len()`.  Arrays are of a *fixed size*.

The *type annotation* for arrays is: `[<element-type>; <number-of-elements>]`

Arrays may be declared explicitly by listing each element.  Like C, there is a shorthand to declare an array of all the same elements, repeated for `n` times: `[<expr>; <number-of-elements>'`

For example, to declare an array of a hundred `13`'s:
```Rust
let a: [u32; 100] = [13; 100] 
```

An empty array may be declared with `[<expr>; 0]` but note that `expr` will still be evaluated, so beware of side-effects.
### 4. Slices
Here we first come across Rust's unique concepts of **ownership** and **borrowing**.  We'll cover them in greater detail later on.

A **slice type** refers to a contiguous sequence of objects, all of the same type.  The slice type consists of a pointer to the first object and the size of the object's type.

In this exercise, a slice is used to refer to a sub-range of an array.  For example:
```Rust
let a = [1, 2, 3, 4, 5];

let nice_slice = &a[1 .. 5]; 

// nice_size == [2, 3, 4]
```

The `&` symbol is Rust's **reference operator**, which gets or "borrows" the value of a variable.  This acts similar to C's address operator (`&a`), which gets the memory address of a variable, but with additional features/guards in place. 

So here `&a[1 .. 5]` means "go to the location" of `a` and get the "first *up-to* fifth" objects of the sequence this `a` "points" to.

The *type annotation* for a slice is `&[T]`.  You can think of it as an "un-owned array", which will make sense later.

### 5. Tuples
A **tuple** is a Rust's other primitive **compound type** that consists of elements that may be of *different* types. 

Tuple's are *ordered*.  The type-annotation of a tuple needs to order the types of the elements as they appear.  For example:
``` Rust
let my_tuple: (u8, &str, f16) = (8, "Hello World", -13.2);
```

You can access elements in a tuple by **destructuring**:
```Rust
let my_tuple = ("Furry McFurson", 3.5);
let (name, age) = my_tuple;

// name == "Furry McFurson"
// age == 3.5
```

Like arrays, tuples are of fixed size.
### 6. Tuple Indexing
Elements may also be accessed by *indexing*:
```Rust
fn indexing_tuple() {
    let numbers = (1, 2, 3);
    let second = numbers.1;

    assert_eq!(2, second,
        "This is not the 2nd number in the tuple!")
}
```

## Vectors
A **vector** can be thought of as a *dynamically sizable* array.  As such, Rust's vectors are stored on the *heap* while arrays are stored on the *stack*.  Vectors are not a primitive data type, but instead provided by Rust's Standard Library.
### 1. Instantiating Vectors
Declare a vector with `Vec::new()` and add elements with the `push()` method.  Make sure that the vector is *mutable* in order to push elements.  As an example:
```Rust
let mut x: Vec<i32> = Vec::new();
x.push(32);
```

The easier way to instantiate a vector is with the `vec![]` macro:
``` Rust
let v = vec![10, 20, 30, 40];
```

### 2. Iterating over Vectors
Here we use something called **iterators** that let's us operate on all the elements of a vector; either one-by-one or all-at-once.  
#### Mutable Iterator 
The method `.iter_mut()` returns an *iterator* that "produces" *references* to each vector element, one-by-one.  So in the for-loop, `element` is a *reference* to a vector element and each iteration of the loop refers to the *next* element in the vector.  

Remember a reference is a "pointer" that holds the "memory address" of a value.  To get the actual value, we use the **dereference operator**.  To get the actual value of `element` and multiply it by two, we use `*element * 2`.  To store that now as the value of the element, we use:
```Rust
*element = *element * 2;
```

Note that we are *mutating* the original vector `v`.
#### Mapping
Here, `.iter()` returns an iterator but `.map()` takes a reference `element` and maps it to a new value in the iterator.

// TODO
## Move Semantics
These exercises dive into the concepts of **ownership** and **borrowing**; together they play important roles in **move semantics**, Rust's unique memory management schema.

Every *value* in Rust has an **owner**: this is the *variable* in a certain *scope* that is responsible for freeing that value from memory.  

There is only one owner of a value at a time.  Ownership of a value may be moved to a new variable; afterwards, the old variable (the previous owner) becomes invalid.  
```Rust
let a = 10;
let b = a;
// b now owns `10` and a is an invalid variable (holds nothing)
```
### 1. Moving Variables
Here is a first-pass understanding of what is happening in this exercise:
1. The variable `vec0` is *moved* into the *scope* of `fill_vec()` as `vec`. 
2. The *ownership* of the vector is *moved* from variable `vec0` (as argument `vec`) to newly declared variable `vec`.
	- `vec0` is now invalid; try adding `println!("{}", vec0[0])` at the end of `main()` to see an error message.
	- Since we want to change the vector, `vec` needs to be declared as *mutable* with `mut`.
3. The vector is mutated: a new value is pushed onto the vector.
4. `vec` is *returned* from the function i.e. moved to the outside scope.
5. The ownership of the vector is moved from `vec` to `vec1`.  
	- At this point, only `vec1` is a valid variable.

A *macro* is used to check the value of `vec1`; macros don't move values like functions.
### 2. Borrowing
In this exercise, we want to keep `vec0` in the scope of main instead of moving it into `fill_vec()`.

Similar to *pass-by-reference* in C/C++, a different variable or scope can **borrow** a value.  The *owner* essentially allows another variable --the *borrower*-- to access its owned value, but the borrower *cannot free* the value.  A borrowed value, or **referencing**, is prefixed by the symbol `&`.   

As for the exercise: first, the function definition of `fill_vec()` needs to be modified to accept a borrowed vector instead:
```Rust
fn fill_vec(vec: &Vec<i32>) -> Vec<i32>
```

The function call of `fill_vec()` then needs to pass `vec0` as a borrowed value:
```Rust
fill_vec(&vec0)
```

What happens in the exercise now is this:
1. The **address** of `vec0` is moved into `fill_vec()` as `vec`, which is now essentially a vector pointer.
2. The method `.clone()` is used to *copy* the vector pointed-to by `vec` into the newly declared vector variable `vec`.
3. ..

### 3.  Moving values into Mutable Variables
When we pass a variable into a function, we are really moving the ownership from the passed variable to the parameter variable.

In the first exercise of this section, we saw that we could move an immutable value to a mutable variable:
```Rust 
let mut vec = vec;
```

So we can do the same when it comes to variable passing, by declaring the parameter as mutable:
```Rust
fn fill_vec(mut vec: Vec<i32>) -> Vec<i32>
```

### 4. Moving values out of Functions
This exercise illustrates that returning a value from a function is moving that value out from the function's scope.

First, change the function call to take no arguments.  Then *create* a new vector in the scope of the function.  When the new vector is returned, it is being moved out of the function's scope.

### 5. Mutable Borrows
A *borrow* (or reference) as we saw previously lets a variable access the value of another variable (the *owner*).  

A **mutable borrow** lets another variable access the value of another value and *modify* that value.  I think of it as "asking" the owner to change the value.

There can only be *one mutable borrow* of an owned value at a time.

This exercise asks to rearrange the *lifetimes* of variables so there is only one mutable borrow of `x` at a time.

### 5. Function Signatures
This exercise brings together the lessons of this section, but highlights that Rust, unlike C/C++, strictly differentiates between a value and a reference to that value.

First, the function signature and call of `get_char()` needs to borrow `data`: this is done by adding `&` at the appropriate places.

Similarly, the `&`'s need to be removed from the signature and call of `string_uppercase()`.

## Structs
**Structs** are Rust's **user-defined data types**.  Similar to tuples, they group related elements called **fields** together.  Unlike tuples, the elements of a struct are *named types*.

#### 1. Declaring Structs
Structs can be defined like in C/C++, where we list the name of the fields and give their types:
``` Rust
struct ColorClassicStruct {
    red: u32,
    green: u32,
    blue: u32,
}
 ```

Structs can be defined like tuples, where fields do not have names:
```Rust
struct ColorTupleStruct(u32, u32, u32);
```

There is also something called a **Unit-Like Struct**, which handles like an *empty tuple*.  It is useful for implementing *traits*, which we'll learn later.
```Rust
struct UnitLikeStruct;
```

Structs can be declared like any other data type:
```Rust
let green = ColorClassicStruct{red:0, green:255, blue:0};
let green = ColorTupleStruct(0,255,0);
let unit_like_struct = UnitLikeStruct;
```


#### 2. Copying Structs
We can create by new struct by copying the fields from an existing struct.
```Rust
let your_order = Order {
	name: "Hacker in Rust".to_string(),
	count: 1,
	year: order_template.year,
	..order_template
};
```

The shorthand to fill the rest of the fields with copies from an existing struct is: 
```Rust
..<other_struct>
```

#### 3. Structure Methods
Structures, besides fields, can contain functions.  The functions of a structure need to be defined in a separate block from the structure definition called the **implementation block**, which begins with keyword `impl`. 

Implemented functions that need to access a structure's fields need to define `&self` as the function parameter.  A field can then be accessed with `self.some_field`.  For example:
```Rust
fn get_fees(&self, cents_per_gram: u32) -> u32 {
	return self.weight_in_grams * cents_per_gram;
}
```

## Enums
**Enums** are another user-defined type, similar to enums in C/C++ or algebraic types in some functional languages.  An enum represents a *range* of *possible* values for a variable (enumerations).  The classic example is an enum representing the day of the week.

### 1. Defining an Enum
Defined as the type `enum` that takes the different possible values:
```Rust
enum Day {Monday, Tuesday, Wednesday, Thursday, Friday,}
```

### 2. Different Types
Unlike in C/C++, the possible values in an enum may take different types, called **variants**.  In the exercise, we create a `Message` enum, where messages may be different data depending on what is intended:
```Rust
enum Message {
    Move {x:u32, y:u32}, // anonymous struct
    Echo (String), // of type String
    ChangeColor (u32, u32, u32), // anonymous tuple
    Quit, // type-less
}
```

Wrap the type in parentheses.

### 3. Using Enums
This exercise stresses an enum value is really a stand-in for another data structure.

Here we first introduce a **match-case** in Rust.  Each branch of a match-case is denoted with the symbol `=>`.

```Rust
enum Message {
    // TODO: implement the message variant types based on their usage below
    // I AM NOT DONE
    Move (Point),
    Echo (String),
    ChangeColor (u8, u8, u8),
    Quit,
}

// ...

match message {
	Message::ChangeColor(r,g,b) => self.change_color( (r,g,b) ),
	Message::Quit => self.quit(),
	Message::Echo(msg) => self.echo(msg),
	Message::Move(pt) => self.move_position(pt),
}
```

Note the hint in the exercise: we match the *destructured* tuple `(r, g, b)`.  In the arm, when we want to pass `change_color()` a tuple, we have to recreate the tuple. 
## Strings
**Strings** are types provided by the Standard Library.  There are actually two "string"-types:
- `String` which is like strings in C/C++: a wrapper or object around the character array.
- `&str` which is called the **string slice**.  It is also called the **string literal**, to match other languages, but it is itself a special subset of the *slice type*, which we met in the primitive data types section.

### 1. Converting between Types
There are a few ways to convert a string  slices `&str` to a `String` object.  For a string literal `"blue"`:
- `"blue".to_string()` 
- `String::From("blue")`
- `"blue".to_owned()`
- `"blue".into()`

The first two are preferred; the last two give the result we want here, but do something differently, which we won't get into right now.

The hint mentions that string slices have *static lifetimes*, meaning they are "hard-wired" into the code (static variables in C/C++, as part of the code section) and thus *immutable*.

You can *chain* methods, like in Java or C++.

### 2. String References
A reference to a string is a string slice.  In other words, when we borrow a value from a `String` variable, we are borrowing a value of type `&str`.

In more other words, `&String` and `&str` are the "same".  You can test this by changing the function signature for a `is_a_color_word()` to accept `attempt` as of type either `&String` or `&str`.  I say "same" because what's actually happening is something called **reference conversion** or **implicit dereference coercion**, which is beyond this course.
### 3. Methods on Strings
There are many methods to manipulate strings and string slices.  Here are a few for this exercise that works on string slices:

- `.trim()` returns a string slice with leading and  trailing white-spaces removed.
- `.push_str(<str>)`: appends a string slice to a string object.
- `.replace(<pattern>, <replacement>)`: in a given string slice, take a (sub-)string slice to match and replace any instance with a replace (sub-)string slice.

To concatenate strings, there are several options.  Using `push_str()` may be tedious, because it it is not an expression, but mutates the string it operates on in place, so that you would need to explicitly return the new string.  Much more easily:
``` Rust
<String> + <string slice>
```
yields a `String` with the `<string slice>` appended.

There is also a macro called `format!` that allows for combining strings together.

In the exercise, remember to convert the results of these methods to the `String` type (probably with `to_string()`).

### 4. Mini-Quiz
This exercise simply tests if you can recognize the difference between values of type `String` and `&str`.

## Modules
Like in modules in Scheme/Racket, a library in C/C++, modules in Python, or Public Classes in Java, **modules** are Rust's way to package code together as a unit.

### 1. Public Attribute
A **module** is declared with the keyword `mod` followed by curly-braces demarcate the module.  By default, everything in a module is *private*: inaccessible to anything outside the scope of the module.  To make something *public*, use the `pub` keyword.

### 2. Using Namespace
You can nest modules within each other.

You can import a module or part of a module with a new particular name, similar to importing in Python, using `as`.  This may also be done in a module, and the new name made publicly available.

```Rust
    pub use self::fruits::PEAR as fruit;
    pub use self::veggies::CUCUMBER as veggie;
```

Rather than `self`, another option is `super`, which means to use the module above the current level (similar to `..` in navigation file-systems).
### 3. Standard Library
The standard library is a module, with particular modules nested within.  You can import specific functions or values.  This exercise introduces two of them:
- `std::time::SystemTime` : a function.
- `std::time::UNIX_EPOCH` : a value.

Declare their use at the beginning of your source, as in most languages.

## Hash Maps
A **hash map** is a sort of *associative array* and a very useful data structure.

### 1. Creating and Using Hash Maps
Hash maps are provided by the Standard Library in `std::collections::HashMap`.

To create a new hash map, use the create trait: `HashMap::new()'`

Insert new associates, consisting of a keyword-value pair, with method `.insert(<keyword>, <value>)`

If the keyword already exists, then `.insert()` updates the value.

Note that the keyword needs to be a "own-able" type: so a keyword may be a `String` type but not `&str`.

### 2. Hash Map Methods
This exercise shows two methods useful when using hash maps.

The method `.entry(<keyword>)` gets the value associated with the keyword in a hash map.   If the keyword-value pair does not exist, the method returns `None`, an enum value we'll learn later.

You can *chain* the method `.or_insert(<value>)` after `.entry()`: if `.entry()` returns `None`, a new keyword-value pair is inserted into the hash map, with the given value.

For example, in the exercise:
```Rust
basket.entry(fruit).or_insert(1);
```

### 3. Mini-Quiz
The exercise uses knowledge from the previous exercises.

As a hint: you can break up chained methods onto individual lines, or arguments into individual lines; like in C/C++, white-space is ignored/compressed by the Rust compiler.

Remember the value is the struct `Team`.

Here's a working example:
```Rust
        let team1 = scores.entry(team_1_name)
            .or_insert(Team {goals_scored:0, goals_conceded:0});
        team1.goals_scored += team_1_score;
        team1.goals_conceded += team_2_score;

        let team2 = scores.entry(team_2_name)
            .or_insert(Team {goals_scored:0, goals_conceded:0});
        team2.goals_scored += team_2_score;
        team2.goals_conceded += team_1_score;
```

## Quiz 2
When using a module, use the `super::` keyword.

Because a match-case is an expression, it can be used as the value in variable initialization.

The method `.to_uppercase()` returns a `String`, but `.trim()` returns a `&str`.  Note the variable `string` in the loop is of type `&str`.

The method `<string slice>.repeat(<size:u32>)` returns a `String` of `<string slice>` repeated `<size>` times. 

```Rust
mod my_module {
    use super::Command;

    // TODO: Complete the function signature!
    pub fn transformer(input: Vec<(String, Command)>) -> Vec<String> {
        // TODO: Complete the output declaration!
        let mut output: Vec<String> = vec![];
        for (string, command) in input.iter() {
            // TODO: Complete the function body. You can do it!
            let nstr = match command {
                Command::Uppercase => string.to_uppercase(),
                Command::Trim => string.trim().into(),
                Command::Append(size) => {
                    string.to_string() + &"bar".repeat(*size)},
            };
            output.push(nstr);
        }
        output
    }
}
```

An interesting note: using `.into()` instead of `to_string()` or `.to_owned()` will result in an error; earlier we mentioned that `.into()` doesn't exactly convert a string slice to a `String`.

## Options
An **option** is a special type of enum provided in the Standard Library.  It is a wrapper around "optional values".

### 1. Using Options
There are two variants of options (being an enum):
- `Some(<value>)` : is a wrapper for an optional value
- `None` : represents no value

Use the `.unwrap()` method  on an option to get the inner value, if there is one.

### 2. If-Let and While-Let
		

