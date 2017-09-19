if hash brew 2>/dev/null; then
    PATH="$(brew --prefix)"/opt/python/libexec/bin:"$PATH"
    hash node 2>/dev/null || PATH="$(brew --prefix)"/opt/node@6/bin:"$PATH"
    hash thrift 2>/dev/null || PATH="$(brew --prefix)"/opt/thrift@0.90/bin:"$PATH"
    PATH="$(brew --prefix)"/bin:"$PATH"
    export PATH

    # Homebrew doesn't write anything outside of `brew --prefix`
    # https://github.com/Homebrew/brew/blob/master/docs/Homebrew-and-Python.md#site-packages-and-the-pythonpath
    PYTHONPATH="$(brew --prefix)/lib/python2.7/site-packages:$PYTHONPATH"
    export PYTHONPATH
fi
