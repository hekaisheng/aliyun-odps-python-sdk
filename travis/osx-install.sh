brew update
# Per the `pyenv homebrew recommendations <https://github.com/yyuu/pyenv/wiki#suggested-build-environment>`_.
brew install openssl readline
# See https://docs.travis-ci.com/user/osx-ci-environment/#A-note-on-upgrading-packages.
# I didn't do this above because it works and I'm lazy.
    # install pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
PYENV_ROOT="$HOME/.pyenv"
PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
pyenv install $PYTHON
pyenv global $PYTHON
python -V
pip install --disable-pip-version-check --user --upgrade pip
pip install cython
pip install wheel
python setup.py bdist_wheel