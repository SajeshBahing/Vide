# Vide
Vim IDE for PHP

Pathogen must be installed.

create autoload and bundles directory in ~/.vim/ directory and clone git repositories mentioned in repo file into ~/.vim/bundles directory.

this project is not complete yet as i am just learning to configure vim as PHP IDE.

will create installer script after configuration is complete

Use neocomplete for autocomplete and use ctags for defination jump.

ctags command to generate tags 

ctags -R

or

ctags --exclude=.git --exclude='*.log' -R * `bundle show --paths` (require ruby-bundler package for this command to run)


