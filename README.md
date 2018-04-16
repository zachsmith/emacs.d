# Initial Setup

``` shell
$ git clone https://github.com/zachsmith/emacs.d .emacs.d
$ cd .emacs.d
```

For emacs packages I want to manage with local repos, I use submodules.
Need to initialize the submodules after cloning:

``` shell
$ git submodule update --init --recursive
```

# Updates

After `---init`, future updates will require:

``` shell
$ git submodule update --recursive --remote
```
