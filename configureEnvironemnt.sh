######################################################
# update the repository source list for aptitutude
######################################################

# change the user to superuser for privileges

# NeuroDebian
wget -O- http://neuro.debian.net/lists/precise.us-ca | sudo tee /etc/apt/sources.list.d/neurodebian.sources.list
apt-key adv --recv-keys --keyserver pgp.mit.edu 2649A5A9

# tell apt to update itself
apt-get update

######################################################
# install all my desired packagaes through aptitude
######################################################

# use the -y flag to answer yes to all questions and make non-interactive

# emacs editor
apt-get -y install emacs

# python neuroscience libraries
apt-get -y install python-nibabel python-scipy python-matplotlib mayavi2 python-sympy cython python-networkx python-pexpect python-nose python-setuptools python-sphinx python-pygments python-twisted python-foolscap python-tk build-essential

# machine learning library
apt-get -y install python-sklearn

# system tools
apt-get -y install gconf-editor

# GIMP image editor (like Photoshop)
apt-get -y install gimp

# vision egg
apt-get -y install python-opengl python-imaging python-imaging-tk python-pygame mesa-common-dev
#python 2.6 (for Vision egg?)


#Meld (diff viewer)
apt-get -y install meld

#network folder mounting
apt-get -y install sshfs

#Terminator
apt-get -y install terminator

# git repository software
apt-get -y install git gitk git-gui gitmagic git-sh git-svn gitweb

# Settings manager for the compiz windows manager
apt-get -y install compizconfig-settings-manager

######################################################
# install all non-aptitude packages
######################################################

# move to the downloads folder to store all downloads
cd ~/Downloads

#chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i ./google-chrome*.deb # this installs the deb
apt-get -f install

# TODO - this must be stored in the home folder
#dropbox
wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
./dropbox-dist/dropboxd

#mendeley
wget http://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
dpkg -i ./mendeleydesktop-latest
#NX

#NX Client
wget http://64.34.173.142/download/3.5.0/Linux/nxclient_3.5.0-7_amd64.deb
dpkg -i nxclient_*amd64.deb 

#Skype

#LabjackPython

#Labjack exodriver

# Pymacs, ropemacs, ropemode

######################################################
# Miscelaneous
######################################################

#^^^^^^^^^^^^^^^^^^^^^^END SU LOGIN^^^^^^^^^^^^^^^^^^^^^^^^^^^
su sam

# create my RSA key and send to skittles, NX, and Git-Hub
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
ssh-copy-id "sam@bishoplab.psych.berkeley.edu -p 777"
ssh-copy-id "rashared@bishoplab.psych.berkeley.edu -p 777"
ssh-copy-id sam@ssh.neuro.berkeley.edu

# set Meld as defauly diff viewer (in emacs) (?)

# set emacs as default inline editor

# hardcode my user and group numbers so all permissions are the same
sudo usermod --uid 1234 your-username. 
sudo groupmod --gid 1234 your-username

# create the directories for network mounts
mkdir ~/stimulusSets
mkdir ~/users
mkdir ~/projects
mkdir ~/labDocs
mkdir ~/studies
mkdir ~/NX

######################################################
# Update Config Files
######################################################

# download all my config files from git-hub

# update my bash config

# update my matlab settings

######################################################
# Emacs setup
######################################################

# update my emacs config

# download and install ropemacs, ropemode, pymacs and autocomplete.el
# to allow for an integrated python IDE in emacs
wget http://pypi.python.org/packages/source/r/ropemacs/ropemacs-0.7.tar.gz ~/Downloads/.
tar -xzf ~/Downloads/ropemacs-0.7.tar.gz ~/Downloads/ropemacs
python ~/Downloads/ropemacs/setup.py install
rm -r ~/Downloads/ropemacs*
wget http://pypi.python.org/packages/source/r/ropemode/ropemode-0.2.tar.gz  ~/Downloads/.
tar -xzf ~/Downloads/ropemode-0.2.tar.gz ~/Downloads/ropemode
python ~/Downloads/ropemode/setup.py install
rm -r ~/Downloads/ropemode*
wget http://pypi.python.org/packages/source/r/rope/rope-0.9.4.tar.gz  ~/Downloads/.
tar -xzf ~/Downloads/rope-0.9.4.tar.gz ~/Downloads/rope
python ~/Downloads/rope/setup.py install
rm -r ~/Downloads/rope*
wget https://github.com/pinard/Pymacs/tarball/master ~/Downloads/.
tar -xzf ~/Downloads/pymacs* ~/Downloads/pymacs
python ~/Downloads/pymacs/setup.py install
rm -r ~/Downloads/pymacs*
wget http://cx4a.org/pub/auto-complete/auto-complete-1.3.1.tar.bz2 ~/Downloads/.
tar -xjf ~/Downloads/auto-complete-1.3.1.tar.bz2 ~/Downloads/auto-complete
python ~/Downloads/auto-complete/setup.py install
rm -r ~/Downloads/auto-complete*

# update my python settings


######################################################
# GConf System settings
######################################################

# turn screen lock off
gsettings set org.gnome.desktop.screensaver lock-enabled false

# update my Unity toolbar configuration (icons) [All Appearance settings]

# auto-hide the unity launcher
gconftool-2 --type int --set "/apps/compiz-1/plugins/unityshell/screen0/options/launcher_hide_mode" 1

# make terminator the dafault terminal for ctrl-t
gconftool-2 --type string --set "/apps/compiz-1/plugins/gnomecompat/screen0/options/command_terminal" "terminator -m"
