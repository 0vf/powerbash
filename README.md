# powerbash
Bash theme made to look like powerlevel10k <br />
![image](https://user-images.githubusercontent.com/36998498/208265770-34f1c1d8-c3c1-45c0-8117-c2ed764cf345.png)
## Features
* Git integration
* Error code
* Distro icons

## Installation:
To install, start by cloning this repository:
```bash
git clone https://github.com/z-ffqq/powerbash.git
```
Proceed by moving `powerbash/powerbash` to any directory you'd like (or simply keep it):
```bash
mv powerbash/powerbash ~/Documents
```
Source the script in your `~/.bashrc` file:
```bash
source ~/Documents/powerbash
```
Then, read what's below
### Types:
(nologo means the same variant of the theme without a distro or git branch logo)
* `unseperated_powerline_dark`
  - `unseperated_powerline_dark1`
  - `unseperated_powerline_dark2`
  - `unseperated_powerline_dark3`
  - `unseperated_powerline_dark4`
* `nologo_unseperated_powerline_dark`
  - `nologo_unseperated_powerline_dark1`
  - `nologo_unseperated_powerline_dark2`
  - `nologo_unseperated_powerline_dark3`
  - `nologo_unseperated_powerline_dark4`
* `seperated_powerline_dark`
  - `seperated_powerline_dark1`
  - `seperated_powerline_dark2`
  - `seperated_powerline_dark3`
  - `seperated_powerline_dark4`
* `nologo_seperated_powerline_dark`
  - `nologo_seperated_powerline_dark1`
  - `nologo_seperated_powerline_dark2`
  - `nologo_seperated_powerline_dark3`
  - `nologo_seperated_powerline_dark4`
* `minimalist_powerline`
* `nologo_minimalist_powerline` <br /> <br />

Put one of the values above in `PROMPT_COMMAND` as shown below:
```bash
PROMPT_COMMAND=$(unseperated_powerline_dark1)
```
