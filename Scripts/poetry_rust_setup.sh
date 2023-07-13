#! /usr/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

# Install poetry
$SCRIPT_DIR/poetry_setup.sh $1

cd $1

echo "import rust

text = rust.sum_as_string(1, 2)  # '3'
print(text)
assert text == '3'" >$1/app.py

echo "
[tool.maturin]
features = [\"pyo3/extension-module\"]
module-name = \"$1\"" >>pyproject.toml

old_build_requires="requires = [\"poetry-core\"]"
new_build_requires="requires = [\"poetry-core\", \"maturin>=1.1,<2.0\"]"
sed -i "s/$old_build_requires/$new_build_requires/g" pyproject.toml

old_build_backend="build-backend = \"poetry.core.masonry.api\""
new_build_backend="build-backend = \"maturin\""
sed -i "s/$old_build_backend/$new_build_backend/g" pyproject.toml

mkdir rust
cd rust
poetry run maturin init --name rust --mixed --bindings pyo3

rm pyproject.toml # Remove the pyproject.toml file created by maturin init
rm -r python      # Remove the python directory created by maturin init
rm -r github      # Remove the github directory created by maturin init

echo "
[features]
extension-module = [\"pyo3/extension-module\"]
default = [\"extension-module\"]" >>Cargo.toml

poetry run maturin develop

cat $SCRIPT_DIR/gitignore/rust.txt >>.gitignore
git add -A
git commit -m "Add rust base"
