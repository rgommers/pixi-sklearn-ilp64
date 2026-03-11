mkdir builddir

$PYTHON -m build -w -n -x \
    -Cbuild-dir=builddir \
    -Cinstall-args=--tags=runtime,python-runtime,devel \
    -Csetup-args=-Dblas=mkl-dynamic-ilp64-gomp \
    -Csetup-args=-Duse-g77-abi=true

$PYTHON -m pip install dist/scipy*.whl
