# homebrew-formulas
brew formulas to install my own tools I wrote that I very commonly use, for things
not popular enough to be in homebrew core.

most of my programs are not here, only ones that are mostly:
 a.) "done",
 b.) "universal" CLI tools, rather than project/environment based
 c.) used frequently enough (>=weekly) I always want them on any workstation I'm on.

Of course there area also lots of things that probably meet this criteria but I have been too lazy to port here.

### Installation

1. `brew tap mroth/formulas`
2. `brew install $FORMULA_NAME_HERE`

Alternately if you just want to install a single program `foobar`, you can do
`brew install mroth/formulas/foobar` which will automatically tap the proper keg.

### MIA
The following programs are now part of homebrew core and should be maintained there instead:

 - scmpuff
 - slacknimate
