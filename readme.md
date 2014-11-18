# Modern C++ Programming with Test Driven Development

A prebaked dev env in container form for following along https://pragprog.com/book/lotdd/modern-c-programming-with-test-driven-development.

## Preqs

- Docker

## Usage

    git clone https://github.com/brianleroux/cpp-env
    docker build .
    docker run -i -t [your container id] /bin/sh

And have a poke around the `/code` directory. Most tests are run with:

    mkdir build
    cd build
    cmake ..
    make
    ./test

### Props

https://github.com/jlangr for writing an excellent book.
