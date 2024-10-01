# `termux-nf` - Get Nerd Fonts on termux

## Supported Platforms
`termux-nf` is meant to install and apply fonts specifically for termux. This script should used in termux only

## Dependencies

```
pkg install curl ncurses-utils 
```

## Installation

Run
```
curl -fsSL https://raw.githubusercontent.com/arnavgr/termux-nf/main/install.sh | bash
```

You can suppress the installation output with the flag `--silent` or `-s`:
```
curl -fsSL https://raw.githubusercontent.com/arnavgr/termux-nf/main/install.sh | bash -s -- --silent
```

## Usage
Run `getnf` to show the font menu.

There are several flags available:

| Flag                                             | Description                                                                |
| ------------------------------------------------ | -------------------------------------------------------------------------- |
| `-h`                                             | Show the help message                                                      |
| `-k`                                             | Keep the downloaded font archives                                          |
| `-a`                                             | Include installed Nerd Fonts in the menu                                   |
| `-g`                                             | Install/Uninstall/List/Update Nerd Fonts for all users                     |
| `-l`                                             | List installed Nerd Fonts                                                  |
| `-L`                                             | List all Nerd Fonts                                                        |
| `-i <font>`                                      | Directly install a specified Nerd Font                                     |
| `-i <name1>,<name2>`,<br> `-i "<name1> <name2>"` | Directly install multiple Nerd Fonts                                       |
| `-u <font>`                                      | Uninstall a specified Nerd Font                                            |
| `-u <name1>,<name2>`,<br> `-u "<name1> <name2>"` | Uninstall multiple Nerd Fonts                                              |
| `-U`                                             | Update all installed Nerd Fonts                                            |

You can get the exact names of the fonts to use with `-i` and `-u` from `getnf -L`.

Enjoy!

### Applying the fonts
After installing the fonts u are automatically given an option to apply the fonts, u can also do so manually to change your fonts using
```
applynf
```

