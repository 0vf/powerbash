# powerbash
Bash theme made to look like powerlevel10k <br />
![image](https://user-images.githubusercontent.com/36998498/208265770-34f1c1d8-c3c1-45c0-8117-c2ed764cf345.png) <br />
*(image above is an example of unseperated_powerline_dark1)*
## Features
* Git integration
* Error code
* Distro icons

## Installation:
To install, start by cloning this repository:
```bash
git clone https://github.com/z-ffqq/powerbash.git
```
Proceed by moving `powerbash/powerbash.bash-theme` to any directory you'd like (or simply keep it):
```bash
mv powerbash/powerbash.bash-theme ~/Documents
```
Source the script in your `~/.bashrc` file:
```bash
source ~/Documents/powerbash.bash-theme
```
Then, put one of the values below in `PROMPT_COMMAND`:
```bash
PROMPT_COMMAND=$(unseperated_powerline_dark1)
```
### Types:
(nologo means the same variant of the theme without a distro or git branch logo)
* Powerline Unseperated Colors (Dark, icons)
  - `unseperated_powerline_dark1`
  - `unseperated_powerline_dark2`
  - `unseperated_powerline_dark3`
  - `unseperated_powerline_dark4`
* Powerline Seperated Colors (Dark, no icons)
  - `nologo_unseperated_powerline_dark1`
  - `nologo_unseperated_powerline_dark2`
  - `nologo_unseperated_powerline_dark3`
  - `nologo_unseperated_powerline_dark4`
* Powerline Seperated Colors (Dark, icons)
  - `seperated_powerline_dark1`
  - `seperated_powerline_dark2`
  - `seperated_powerline_dark3`
  - `seperated_powerline_dark4`
* Powerline Seperated Colors (Dark, no icons)
  - `nologo_seperated_powerline_dark1`
  - `nologo_seperated_powerline_dark2`
  - `nologo_seperated_powerline_dark3`
  - `nologo_seperated_powerline_dark4`
* Powerline Minimalist (Icons)
  - `minimalist_powerline`
* Powerline Minimalist (No icons)
  - `nologo_minimalist_powerline` <br /> <br />


# Recommended
[ble.sh](https://github.com/akinomyoga/ble.sh) | Syntax highlighting, advanced auto completion (if combined with bash-completion) <br />
[bash-completion](https://github.com/scop/bash-completion) | Advanced and programmable completion for bash
