# st - Simple Terminal

st is a simple terminal emulator for X11. For now, this is my configuration of `st` and in the future it will be its own thing.


## Requirements

In order to build this project, you need:

- A C99 Compiler
- GNU Make
- libX11
- libfreetype2

## Build

You can build this project by running `make`:

```sh
make
```

The executable will be located in the `bin` directory.

## Install

Enter the following command to build and install (if necessary, run it as root):

```sh
make clean install
```

By default, the program is installed in `/usr/local/bin`.


## Features

This section is under development.

## TODO

- [ ] The man page should be updated.
- [ ] Configuration should be done in a proper configuration file such as a .toml file.
- [ ] There's still a lot of nonsensical code to fix.

## Credits

Thanks to:

- (2014-2018) Hiltjo Posthuma 
- (2018) Devin J. Pohly
- (2014-2017) Quentin Rameau
- (2009-2012) Aurélien APTEL
- (2008-2017) Anselm R Garbe
- (2012-2017) Roberto E. Vargas Caballero
- (2012-2016) Christoph Lohmann
- (2013) Eon S. Jeon
- (2013) Alexander Sedov
- (2013) Mark Edgar
- (2013-2014) Eric Pruitt
- (2013) Michael Forney
- (2013-2014) Markus Teich
- (2014-2015) Laslo Hunhold

For contributing to the source code of `st`.
