#! /bin/bash
MYPWD=$(cd $(dirname $0)/../; pwd)
cd ${MYPWD}
rm -r public
pip3 install --upgrade sphinx
pip3 install sphinxcontrib-apidoc
sphinx-apidoc -f -o docs/api src tests
sphinx-build -b html docs docs/_build/html
mv docs/_build/html/ public/
