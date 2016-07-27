PastPress - Slide Show (S9) Template Pack from impress.js
=========================

This template pack is based on `Slide Show (S9)`, **but the official gem installation seems not very stable**...so I put the installation guide below...  
This template is modified from [impress.js](https://github.com/bartaz/impress.js) package by Bartek Szopka (aka bartaz), check it out!

## Installing slideshow s9

### [What is slideshow s9? Click me.](http://slideshow-s9.github.io/index.html)

Simply

```
gem install slideshow -v 2.3.0
```

> yep, I haven't update the template for quite a long time.

## How To install the PastPress Template Pack

 * `cd ~/.slideshow/templates/` to the template folder
 * `git clone git@github.com:chgu82837/PastPress.git`
 * then you are all set!

## How to use?

 * `slideshow new -t pastpress` or `slideshow n -t pastpress` to generate a quick start demo source `sample.md`.
 * Use your imagination, edit the generated file `sample.md` as much as you want in `markdown` syntax!
 * `slideshow build sample.md -t pastpress` or `slideshow b sample.md -t pastpress` to generate the slides!!
 * `open sample.html` to see the result!!!

> `slideshow` use file extension type to determine which syntax to use, `.text` and `.md` will use `markdown` syntax!  
> You can change the name of source file `sample.md` as much as you want!  

## Things to be noticed...

 * syntax and notation defined by `slideshow`:
    * the first line `title: ...` and `author: ...` is the slide description
    * `%` to comment
    * things between `%css` and `%end` to use css style
 * markdown syntax:
    * header with only one `#` not worked

> All syntax documentation is mentioned in the `sample.md` generated from `slideshow new -t pastpress` or `slideshow n -t pastpress`, check it out on your own!

## Docker

I have uploaded a docker image on [dockerhub](https://hub.docker.com/r/chgu82837/s9-pastpress/).  

If you want to avoid contaminating your environment, you can use

```
docker run -v $(pwd):/workspace --rm chgu82837/s9-pastpress <slideshow parameters...>
```

Or with `docker-compose` for even better experience:

1. Download [docker-compose.yml](https://github.com/chgu82837/PastPress/blob/master/docker-compose.yml) to your working directory.
2. `docker-compose run --rm new` to create `sample.md` as your start point.
3. `docker-compose run --rm build sample.md` to build `sample.html` as your slide.

