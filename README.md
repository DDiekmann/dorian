# Dorian

Dorian is a collection of scripts and configuration files to setup a new machine. It is mainly used for my personal setup, but feel free to use it for your own setup. I use it on Ubuntu 22.04, but it should work on other Linux distributions as well. I don't know if it works on Windows or MacOS.

## Install Dorian
```bash
cd ~
mkdir Dev
cd Dev
git clone https://github.com/DDiekmann/dorian.git
echo "alias dorian='sudo bash ~/Dev/dorian/dorian.sh'" >> ~/.bashrc
```
### Run Dorian

Just run `dorian` in your terminal and follow the instructions.

### Installation files:

- VSCode
- Github CLI
- Docker + Docker Compose
- Rust (Language)
- Signal (Communication)
- Poetry

### Setup files:

- Basic Aliases
- Script Aliases (for the scripts in the `Scripts` folder)
- Basic Git Config
- Terminal Config

### Scripts:

Usable after running Script Aliases.

- `genpoetry NAME` - Creates a new poetry project with the given name.
- `genpoetryrust NAME` - Creates a new poetry project with the given name and adds a rust backend with maturin.
- `genwebpy NAME` - Creates a new poetry project with the given name and nicegui as frontent

You can find some vscode extension recommendations in the `vscode` folder.
