mkdir builddir

$PYTHON -m build -w -n -x \
    -Cbuild-dir=builddir \
    -Cinstall-args=--tags=runtime,python-runtime,devel

$PYTHON -m pip install dist/scipy*.whl
