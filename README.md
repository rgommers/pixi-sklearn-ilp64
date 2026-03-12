This is a small test repository for exercising changes to SciPy's
Cython APIs for BLAS and LAPACK, adding ILP64 support.

To use this, clone this repo and then:

```
$ git clone git@github.com:rgommers/pixi-sklearn-ilp64.git
$ cd pixi-sklearn
$ git submodule update --init --recursive

$ git clone git@github.com:scikit-learn/scikit-learn.git
$ cd scikit-learn
$ git checkout cython-blas-ilp64
$ cd ..

$ git clone git@github.com:rgommers/statsmodels.git
$ cd statsmodels
$ git checkout cython-blas-ilp64
$ cd ..
```

And then to build or test, use one of the tasks shown by `pixi task ls -s`.
For example:
```
# Will build scipy, then build scikit-learn, then run the sklearn test suite
$ pixi run test
```
