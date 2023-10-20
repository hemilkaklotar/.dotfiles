# .dotfiles
Currently using UBUNTU with gnome and i3wm

<!-- ![.dotfiles](assets/images/the_person.jpg) -->
<img src="assets/images/the_person.jpg" alt=".dotfiles" width="200"/>

I am using zsh shell as my default 

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Credits](#credits)
- [License](#license)

## Installation

1. Clone the repo in your home diretory of system by running below command in terminal

```bash
git clone https://github.com/hemilkaklotar/.dotfiles.git ~/
```

2. run link.sh file in terminal by running bellow command

```bash
bash ./link.sh
```

OR 

```zsh
. ./link.sh
```

3. Install dependancy and required packages

- comment the lines or block of code that you don't want in your system in `./dependency.sh`

- run below command to install the dependancy
```zsh
sudo bash ./dependancy.sh
```

4. Enable tap to click and three fingers touch to middle click

```conf
# /etc/X11/xorg.conf.d/90-touchpad.conf
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
        Option "NaturalScrolling" "true"
        Option "TappingButtonMap" "lrm" # 2/2/3 finger, for 3-finger middle lrm
EndSection
```

## Usage

Provide instructions and examples for use. Include screenshots as needed.

To add a screenshot, create an `assets/images` folder in your repository and upload your screenshot to it. Then, using the relative filepath, add it to your README using the following syntax:


## Credits

Insipiration taken from fellow developers
you can check out their repo and create your own dotfiles if you needed.

- [ThePrimeagen/.dotfiles](https://github.com/ThePrimeagen/.dotfiles.git)

## License

The last section of a high-quality README file is the license. This lets other developers know what they can and cannot do with your project. If you need help choosing a license, refer to [https://choosealicense.com/](https://choosealicense.com/).

---

🏆 The previous sections are the bare minimum, and your project will ultimately determine the content of this document. You might also want to consider adding the following sections.

## Badges

![badmath](https://img.shields.io/github/languages/top/lernantino/badmath)

Badges aren't necessary, per se, but they demonstrate street cred. Badges let other developers know that you know what you're doing. Check out the badges hosted by [shields.io](https://shields.io/). You may not understand what they all represent now, but you will in time.

## Features

If your project has a lot of features, list them here.

## How to Contribute

If you created an application or package and would like other developers to contribute it, you can include guidelines for how to do so. The [Contributor Covenant](https://www.contributor-covenant.org/) is an industry standard, but you can always write your own if you'd prefer.

## Tests

Go the extra mile and write tests for your application. Then provide examples on how to run them here.
