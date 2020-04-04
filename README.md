 Panica
==========================================================================

[jj](https://github.com/aaronngi/jj) wrapper script.


 Overview
--------------------------------------------------------------------------

Panica is a tmux wrapper around jj's daemon and [hooks][jj's hooks].
It should keep you from issuing commands directly into jj's fifo.

Features:
 - Multi-server support
 - Configuration per server
 - NickServ support
 - Automatic tmux windows management
 - (Hopefully) bash-free usage


 Dependencies
--------------------------------------------------------------------------

 - A shell
 - tmux
 - jj


 Installation
--------------------------------------------------------------------------

As root user:

```shell
make
make install
```

or as unpriviliged user:

```shell
make
make PREFIX=~/.local install
PATH=~/.local/bin:$PATH
```

NOTE: Panica installs several jj [hooks][jj's hooks]. Be aware that this
will might overwrite/override existing hooks.


 Usage
--------------------------------------------------------------------------

1. Populate panica's directory wih server configurations.
   - That would be `~/.panica/serverconf.d/<server_addr>`
   - Here's a [template](extra/example_server.conf)
2. `panica`
3. Navigate through the tmux windows
4. Issue [jj commands][jj's commands] with a `/` prefix (prompt hints
   server context)
5. Closing can be tricky, The bulletproof method would be 
   `Ctrl+B : kill-session`


 Logs
--------------------------------------------------------------------------

jj's usual [directory structure][jj's directory structure] can be found
at `~/.panica/irc`


[jj's hooks]: https://github.com/aaronngi/jj#hooks
[jj's directory structure]: https://github.com/aaronngi/jj#directory-structure
[jj's commands]: https://github.com/aaronngi/jj#input-commands
