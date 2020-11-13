xinput --set-prop "Logitech Gaming Mouse G502" "libinput Natural Scrolling Enabled" "off"

xset r rate 280 27

export PATH=$PATH:~/scripts
export PATH=$PATH:~/scripts/aliases
export PATH=$PATH:~/.local/lib/python3.8/site-packages
export PATH=$PATH:/home/a/.local/bin
export PATH=$PATH:~/.emacs.d/bin  

# nix
export PATH=$PATH:~/.nix-profile/etc/profile.d/nix.sh               # initialize profile
export PATH=$PATH:~/.nix-profile/bin     			    # I feel like this is the only way to access the packages
export PATH=$PATH:~/.nix-profile/lib				    # I think this is the only way to access libs
export PATH=$PATH:~/.nix-profile/share     			 
export PATH=$PATH:~/.nix-profile/etc     			    
# export PATH=$PATH:~/.nix-profile/include
export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH  # important
export NIX_PATH=mypkgs=~/.nix-profile/bin:$NIX_PATH                 # important
. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"		    # i think important

export PATH=$PATH:/home/linuxbrew/.linuxbrew/Cellar/
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
export PATH=$PATH:/home/linuxbrew/.linuxbrew/sbin
export PATH=$PATH:/usr/lib/x86_64-linux-gnu/

export PATH=$PATH:$/var/www/websites/aithehuman/

## fix launching qutebrowser with Nixpkgs
export USE_WOLFRAM_LD_LIBRARY_PATH=1
export QT_XCB_GL_INTEGRATION=none

## For my class CSE 111
export PATH=$PATH:/afs/cats.ucsc.edu/courses/cse111-wm/bin

## for my-keys.sh, which uses this file to toggle my-keys
touch .my-keys-toggle

sudo alsactl restore

