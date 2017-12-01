
# em - environment manager

## Installation

    $ mkdir $HOME/.em
    $ cd $HOME/.em
    $ git clone git@github.com:tbarron/em.git
    $ source ./em-setup
    $ em help
    em - environment manager

        help               - display this message
        drop               - remove em functions from environment
        save <path>        - save current env in <path>
        load <path>        - load the env from <path>
        path show          - show $PATH in a readable format
        path rm [-n] RGX   - remove $PATH items matching RGX
        path decap [-n]    - remove first item from $PATH
        path dock [-n]     - remove last item from $PATH
        path ladd [-n] DIR - add DIR at beginning of $PATH
        path radd [-n] DIR - add DIR at end of $PATH

  * You can install em wherever you like. $HOME/.em is recommended.

  * If you like, you can put "source $HOME/.em/em-setup" in your shell
    start up file to make em available at login.

  * Alternatively, if you only want em to be active when you're sitting in
    its install directory, you can use autoenv (I use
    https://github.com/kennethreitz/autoenv) with a .env like the
    following:

        ROOT=$(dirname $0)
        if [ $PWD = $ROOT ]; then
            source ./em-setup
        fi

  * Tests, in the directory tests, can be run using the bt function. You'll
    need to have bats (https://github.com/sstephenson/bats) installed for
    this to work.
