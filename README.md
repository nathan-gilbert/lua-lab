# Polyglot Guild -- Lua

The little language that could.

## Introduction

Lua is a language for extending applications. It initially was developed at
the _Pontifical Catholic University of Rio de Janeiro_ in Brazil and released in
1993.

Lua is multi-paradigm, meaning it can accommodate procedural, functional and
object oriented programming styles.

Competitors in this space: Tcl, Jinja, Forth, Lisp, Python

Lua is a dynamic (typing not necessary), "interpreted" (not really) language.
The interpreter compiles Lua code down to bytecode that is then ran in a virtual
 machine. Lua is a garbage collected language, meaning memory management is
 offloaded from the developer.

## Why do people like it?

You can write a huge C/C++ Application for efficiency purposes (or legacy) and
then "script it" with Lua. It isn't used very often (best I can tell) as a stand
alone language, but instead as code embedded in another application.

For instance:

- Lot's of gaming engines! (World of Warcraft, Corona)
- Networking software: Kong, Nmap, ModSecurity
- Adobe Lightroom uses it!

### Speed

Typically you're using Lua to automate / interact with a lower level language
API. You're doing this for speed already, but at least Lua doesn't get in the
way. It adds very little overhead speed-wise when embedded. If you need even
more performance there are enhancements such as LuaJIT.

### Size

One of Lua's advantages is it's small size.

The source code and documentation are 1.3MB.

The interpreter and std libraries is 278KB!

Lua provides you with the basics and expects you to write the features you need
in the language.

### Portability

_Any platform that supports the std C compiler can run Lua out of the box._

### Free speech and beer

Open Sourced with MIT License -- you can use it for any purpose, even
commercial, and never pay any fees.

## Downsides

- Not a ton of library support compared to say, Python or Javascript.
- Scoping issues -- variables are global by default.
- Error handling kinda like Go -- which means lots of blocks where you're just
  testing the return value of a function for an error, lol.
- Debugging can be challenging, especially when embedded

## Getting started

On macOS: `brew install lua`

This installs the interpreter and a REPL (Read, Eval, Print, Loop).

`> lua` opens the REPL!

To exit the Lua REPL run `os.exit()` or `CTRL-C`.

You can run a script by calling the interpreter with it as an argument:
`> lua basics.lua`

You can load a chunk of Lua code and then enter the REPL with:
`lua -i basics.lua`

Check out the  book [Programming in Lua](https://www.lua.org/pil/contents.html)

Check out the sample game engine [here](https://github.com/nathan-gilbert/simple-corona-game)