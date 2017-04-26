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

or

use ctags -R --PHP-kinds=cfi

if traits are not supported please use this command to generate ctags

ctags -R --PHP-kinds=cfi --regex-php="/^[ \t]*trait[ \t]+([a-z0_9_]+)/\1/t,traits/i"

Reference this repo for cool plugins

https://github.com/amix/vimrc

To Avoid warnings about docs above classes and functions update phpcs configuration

$ phpcs --config-set error_severity 1
$ phpcs --config-set warning_severity 8

and use PSR2 Standard for better result

$ phpcs --config-set default_standard Squiz

required linux packaeges

php-cli, phpmd, phpcs (install from pear not from apt-get), silversearcher-ag, vim-nox, vim-gtk, vim-gnome, vim-athena


