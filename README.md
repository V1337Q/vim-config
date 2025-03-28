# vim-config

## How-to install:

- Install Vim-plug

``` 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
- put the .vimrc file to your home directory, if don't exist. 

```
mv .vimrc ~/ 
```
- Put the vim files inside .vim into your .vim directory 

```
cd .vim ; mv *.vim ~/.vim 
```
- Enter Vim

- Run the following command inside vim

```
:PlugInstall
```
- Source the vimscript
```
:source .vimscript
```

- Exit vim

```
:q
```

- Re-enter vim
 

## Features:
- Status line plugin

# Vim-Airline & buftabline

![Alt text](./images/Preview1.png)

- Custom keymaps (Will update daily for easy navigation)
- Dashboard/Start screen

# Startify

![Alt text](./images/Preview4.png)

- LSP support.

# coc.vim

![Alt text](./images/Preview2.png)

![Alt text](./images/Preview3.png)

