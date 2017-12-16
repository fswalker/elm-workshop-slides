
@title[Intro]

# Elm Workshop

### Kraków 2018

by
<br>
[@dmaterowski](https://twitter.com/dmaterowski) and [@FsharpWalker](https://twitter.com/FSharpWalker)

---

## Sponsor

TODO

---

## Agenda I

<ul class="list-no-point">
<li>9:00  - Welcome!</li>
<li>9:05  - Elm intro</li>
<li>9:30  - Ex1 - Basics</li>
<li>10:15 - Ex2 - TDD</li>
<li>10:55 - Ex3 - TEA time</li>
<li>12:00 - LUNCH</li>
</ul>

+++

## Agenda II

<ul class="list-no-point">
<li>13:00 - Ex4 - Forms</li>
<li>13:45 - Ex5 - Events</li>
<li>14:45 - Ex6 - Commands</li>
<li>15:45 - Ex7 - Decoders</li>
<li>16:15 - Ex8 - Encoders</li>
<li>16:45 - Ex9 - HTTP Requests</li>
<li>16:45 - Ex10 - Elm SPA</li>
<li>BYE!</li>
</ul>

---

## Elm Intro

---

## Exercises

[https://github.com/dmaterowski/elm-workshop](https://github.com/dmaterowski/elm-workshop)

+++

@title[Rocket]

![Toy Story Rocket Gif](assets/toy_story_rocket_big.gif)

---

## Elm Installation

```
                     npm install -g elm
```

---

## Ex1 - Basics

+++

@title[You and Elm]

Only **You** and Elm

+++
<!-- .slide: data-autoslide="900000" -->

@title[Round 1]

Round 1 

**15 min**

+++

@title[End Round 1]

Time is up!

---

### Theory 1

+++

#### Modules

- help organize your code
- name of the file should match <br> module name
- **C**ase **S**ensitive!
- use `alias` - less typing
- specific functions can be published (helps avoid namespace pollution)

+++

#### Expressions

- expression always evaluates to some **value**
- Elm program consists of expressions **exclusively**
- **no** statements!
- more readable code
- no surprises! (especially in runtime)

+++

#### Immutability

A value, once bound, cannot be changed! 

- It means a complete **lack** of **mutation**
- More **robust** apps
- Programs **easier** to **reason** about 
- More **maintainable** codebase
- No unexpected state mutations

+++

#### Partial Application

We **apply** arguments to function.

There can be **many** arguments.

However, we do **not** need to apply all arguments at once!

+++

@title[Partial Application Example]

```elm
add x y = x + y

increment = add 1

luckyNumber = increment 6
```

@[1](add function takes two arguments - x and y)
@[3](partially apply `add` fn - give only one argument and obtain a new function called increment)
@[5](supply the last argument and return result = 7)

+++

#### Currying

Currying is a process which transforms a function with many arguments 

to a chain of unary functions. 

They accept only one input and return only one output.

+++

### All functions in Elm are 
### automatically curried

+++

#### Currying explained

```elm
f : a -> b -> c -> d
f x y z = ...

f : a -> (b -> (c -> d))
f = \x -> (\y -> (\z -> ...))
```
@[1-2](f accepts three arguments: x, y and z of types: a, b, and c. Returns value of type d)
@[4-5](in fact f accepts one argument and returns one function until the last value is returned)

+++

#### Unit

Intutition: unit basically means _empty_, _void_ or _nothing_.

This is both a **type** and a **value** the same time.

In Elm unit is represented by `()` 

+++

```elm
f : () -> Int
f () = 7

f () -- returns 7

g = \() -> 5
g () -- returns 5
```

@[1,2](Function f takes unit and returns Int)
@[4](Unit must be applied to function in order to return value)
@[6](We can use lambda notation)
@[7](We must pass unit! This is different than \\_ -> notation)

---

@title[The End]

## Thank you! <i class="fa fa-smile-o" aria-hidden="true"> </i>

<img alt="Elm logo" src="assets/elm.png" class="elm-logo-end" />

[Elm Slack @fa[slack]](http://elmlang.herokuapp.com/)
