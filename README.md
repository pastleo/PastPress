PastPress - Slide Show (S9) Template Pack from impress.js
=========================

This template pack is based on `Slide Show (S9)`, **but the official gem installation seems not very stable**...so I put the installation guide below...  
This template is modified from [impress.js](https://github.com/bartaz/impress.js) package by Bartek Szopka (aka bartaz), check it out!

## Installing slideshow s9

### [What is slideshow s9? Click me.](http://slideshow-s9.github.io/index.html)

Simply

```
gem install slideshow
```

If you are lucky enough that bugs below is solved.

### Problems Second time (2014/12/4) I encountered when installing

After install `slideshow` by `gem install slideshow`, when I type `slideshow` I got:

```
/usr/local/Cellar/ruby/2.1.5/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require': cannot load such file -- props/db (LoadError)
```

I solve this by change to the older version of props:

```
gem uninstall props
gem install props -v 1.1.1
```

Unfortunately, I got another problem when calling `slideshow`

```
/usr/local/Cellar/ruby/2.1.5/lib/ruby/2.1.0/rubygems/specification.rb:2064:in `raise_if_conflicts': Unable to activate activerecord-4.1.8, because activesupport-4.2.0.rc1 conflicts with activesupport (= 4
.1.8) (Gem::LoadError)
```

I solved this problem by remove one of the activesupport `gem uninstall activesupport`, gem will prompt which to uninstall, I choose older version which works:

```
Select gem to uninstall:
 1. activesupport-4.1.8
 2. activesupport-4.2.0.rc1
 3. All versions
> 1

You have requested to uninstall the gem:
        activesupport-4.1.8
```

### Problems First time (2014/10) I encountered when installing

 * As I am familiar with,using the dependecy package management tool in ruby `gem`
 * `gem install slideshow` as official said and I expected.
 * `Successfully installed slideshow-2.3.0` as I expected with many other dependency packages installed.
 * **BUT** when I call the executable by `slideshow` regardless of the parameter, I got 

```
/usr/local/Cellar/ruby/2.1.3/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require': cannot load such file -- active_record (LoadError)
```

 * Oh,so the dependency is not well maintained or outdated at this time. Install this missing package `activerecord` by

```
gem install activerecord
```

 * `5 gems installed`. **BUT** Unfortunately, I got another problem when calling `slideshow`

```
/usr/local/Cellar/ruby/2.1.3/lib/ruby/2.1.0/rubygems/specification.rb:2064:in `raise_if_conflicts': Unable to activate activerecord-4.1.6, because activesupport-4.2.0.beta2 conflicts with activesupport (= 4.1.6) (Gem::LoadError)
```
 *  After some try-and-error, I solved this problem by remove one of the activesupport `gem uninstall activesupport`, gem will prompt which to uninstall:

```
Select gem to uninstall:
 1. activesupport-4.1.6
 2. activesupport-4.2.0.beta2
 3. All versions
> 
```

 * I choose `activesupport-4.2.0.beta2` by entering `2`, getting `Successfully uninstalled activesupport-4.2.0.beta2`
 * And then `slideshow` worked properly.
 * Finally, `slideshow install impress.js` to get the template as easily as it could be.
 * `slideshow list` to check if the template it is properly installed.

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


