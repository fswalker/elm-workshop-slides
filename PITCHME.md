
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

### Slides

[https://gitpitch.com/fswalker/elm-workshop-slides](https://gitpitch.com/fswalker/elm-workshop-slides) 

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

- always evaluate to some **value**
- Elm program consists of expressions **exclusively**
- **no** statements!
- more readable code
- no surprises! (especially in runtime)

+++

#### Immutability

A value, once bound, cannot be changed! 

- complete **lack** of **mutation**
- More **robust** apps
- Programs **easier** to **reason** about 
- More **maintainable** codebase
- No unexpected state modifications

+++

#### Partial Application

We **apply** a function to an argument.

There can be **many** arguments.

No need to apply to all arguments at once!

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

**to a chain of unary functions.**

They accept only **one input** and return only **one output**.

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

Unit basically means _empty_, _void_ or _nothing_.

**Type** unit has only one **value**.

Both type and value are represented by empty tuple: **`()` **

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

## Exercises

[https://github.com/dmaterowski/elm-workshop](https://github.com/dmaterowski/elm-workshop)

+++

@title[Rocket]

![Toy Story Rocket Gif](assets/toy_story_rocket_big.gif)

---

### Elm Installation

```shell
                     npm install -g elm
```

---

### Elm Docs

[http://package.elm-lang.org/packages/elm-lang/core/latest](http://package.elm-lang.org/packages/elm-lang/core/latest)
<br>

[http://elm-lang.org/docs/from-javascript](http://elm-lang.org/docs/from-javascript])

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

### Theory 2

+++

#### Records recap

```elm
type alias Person =
    { name: String
    , age: Int
    }

type alias Pet =
    { name: String
    , legs: Int
    }

getName { name } = name
```

@[1-4](Define type Person - alias for record with props: name and age)
@[6-9](Define type Pet - alias for record with props: name and legs)
@[11](Function which takes record with property name and ignores other props)

+++


```elm
bob =
   { name = "Bob"
   , age = 25
   }

rex =
   { name = "Rex" 
   , legs = 4
   }

getName bob == "Bob"

getName rex == "Rex"
```

@[1-4](Define variable of type Person)
@[6-9](Define variable of type Pet)
@[11](Apply function getName to bob - return name)
@[13](Apply function getName to rex - return name again)

+++

#### Union Types

> A union type is a custom type you create by specifying the values it can contain.

<span class="aside">Feldman, Richard *Elm in Action*. Manning Publications</span>

+++

##### Bool is a union type

```elm
type Bool = True | False
```

+++

##### Maybe is a union type

```elm
type Maybe value
    = Just value
    | Nothing
```

@[1](Declare type Maybe with type variable value)
@[2](First option - `Just` as a container/wrapper for value)
@[3](Second option - `Nothing` means: no value)

+++

##### Union Types - summary

* example of algebraic data structure
* can have multiple cases
* one case may wrap many data structures
* Elm's *case* expression

---

## Elm Test Installation

```shell
                     npm install -g elm-test
```


---

## Ex2 - Union Types & TDD

- Go to folder **Ex2**
- Run `elm-test`
- Exercise instructions: `Ex2/src/Ex2.elm`
- Instructions for running tests in browser: `Ex2/tests/Tests.elm`

+++

@title[Ex2]

Only **You** and Elm

+++
<!-- .slide: data-autoslide="900000" -->

@title[Round 2]

Round 2

**15 min**

+++

@title[End Round 2]

Time is up!

---

@title[The End]

## Thank you! <i class="fa fa-smile-o" aria-hidden="true"> </i>

<img alt="Elm logo" src="assets/elm.png" class="elm-logo-end" />

[Elm Slack @fa[slack]](http://elmlang.herokuapp.com/)
