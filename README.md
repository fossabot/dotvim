# ohai .vim

My Vim files. Please mind the dust.

## Installation

First, install [Source Code Pro for
Powerline](https://github.com/Lokaltog/powerline-fonts/tree/master/SourceCodePro).
It's a patched version of Adobe's Source Code Pro font to work with Airline.

Next,

    $ brew install python
    $ brew install macvim --override-system-vim

At this point I check to make sure I have `+python` enabled so YouCompleteMe works.
This is easy to do via `vim --version`.

Also necessary for YouCompleteMe:

    $ brew install cmake

Then the easy part:

    $ git clone git@github.com:bergren2/dotvim.git ~/.vim
    $ cd $_
    $ ruby install.rb
    $ git clone https://github.com/gmarik/vundle.git bundle/Vundle.vim
    $ vim +PluginInstall +qall

And finally, the rest of YouCompleteMe:

    $ cd bundle/YouCompleteMe
    $ ./install.sh --clang-completer

### Eclim

First, make sure you have [Homebrew Cask](http://caskroom.io/). Then install
Java and Eclipse:

    $ brew cask install java
    $ brew cask install eclipse-ide

Then [download eclim](http://sourceforge.net/projects/eclim). And run the GUI
installer:

    $ java -jar eclim_2.4.0.jar

Point towards your Eclipse installation at
`/opt/homebrew-cask/Caskroom/eclipse-ide/4.4.1/eclipse` and install features for
Java and Ruby. Also be sure to add the following alias:

    $ alias eclimd='/opt/homebrew-cask/Caskroom/eclipse-ide/4.4.1/eclipse/eclimd'

which will make starting the eclimd daemon much easier.

### Troubleshooting

If Vim crashes due to Python errors, make sure you've installed MacVim and
re-compiled YouCompleteMe with Homebrew Python installed first.

## Post Install

If you care, you can make sure Git uses the right Vim for editing commit
messages.

    $ git config --global core.editor "vim"
