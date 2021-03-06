#SKITTLES_URL="bishoplab.psych.berkeley.edu"
SKITTLES_URL="10.0.1.6"
SKITTLES_URL_EXTERNAL="bishoplab.psych.berkeley.edu"

alias skittles="ssh -X sam@10.0.1.10"
alias sam="ssh -X sam@$SKITTLES_URL"
alias samE="ssh -p 777 -X sam@$SKITTLES_URL_EXTERNAL"
alias ra="ssh -X rashared@$SKITTLES_URL"
alias nx="ssh -X samyag1@ssh.neuro.berkeley.edu"
alias glab="ssh -X -p 65454 samyag1@nitrous.berkeley.edu"
alias hostgator="ssh -X root@soniabishoplab.com"
alias ipt="ipython --pylab"

alias mountStimulusSets="sshfs -o idmap=user -o follow_symlinks rashared@$SKITTLES_URL:/data/stimulusSets ~/stimulusSets"
alias mountStudies="sshfs -o idmap=user -o follow_symlinks rashared@$SKITTLES_URL:/data/studies ~/studies"
alias mountProjects="sshfs -o idmap=user -o follow_symlinks rashared@$SKITTLES_URL:/data/projects ~/projects"
alias mountLabDocs="sshfs -o idmap=user -o follow_symlinks rashared@$SKITTLES_URL:/data/labDocs ~/labDocs"
alias mountUsers="sshfs -o idmap=user -o follow_symlinks rashared@$SKITTLES_URL:/data/users ~/users"
alias mountLabJournal="sshfs -o idmap=user -o follow_symlinks sam@$SKITTLES_URL:/data/sam/SamLabJournal ~/labJournal"

alias mountStimulusSetsE="sshfs -p 777 -o idmap=user -o follow_symlinks rashared@$SKITTLES_URL_EXTERNAL:/data/stimulusSets ~/stimulusSets"
alias mountStudiesE="sshfs -p 777 -o idmap=user -o follow_symlinks rashared@$SKITTLES_URL_EXTERNAL:/data/studies ~/studies"
alias mountProjectsE="sshfs -p 777 -o idmap=user -o follow_symlinks rashared@$SKITTLES_URL_EXTERNAL:/data/projects ~/projects"
alias mountLabDocsE="sshfs -p 777 -o idmap=user -o follow_symlinks rashared@$SKITTLES_URL_EXTERNAL:/data/labDocs ~/labDocs"
alias mountUsersE="sshfs -p 777 -o idmap=user -o follow_symlinks rashared@$SKITTLES_URL_EXTERNAL:/data/users ~/users"
alias mountLabJournalE="sshfs -p 777 -o idmap=user -o follow_symlinks sam@$SKITTLES_URL_EXTERNAL:/data/sam/SamLabJournal ~/labJournal"

alias mountNX="sshfs -o idmap=user -o follow_symlinks samyag1@ssh.neuro.berkeley.edu:/home/bishop/samyag1 ~/NX"
alias mountGLab="sshfs -o idmap=user -o follow_symlinks -p 65454 samyag1@nitrous.berkeley.edu:/auto/k1/samyag1 ~/glab"
alias mountGLabData="sshfs -o idmap=user -o follow_symlinks -p 65454 samyag1@nitrous.berkeley.edu:/auto/k8/samyag1 ~/glabData"
alias drives="mountStimulusSets; mountStudies; mountProjects; mountLabDocs; mountUsers; mountLabJournal; mountNX"
alias drivesE="mountStimulusSetsE; mountStudiesE; mountProjectsE; mountLabDocsE; mountUsersE; mountLabJournalE; mountNX"

alias go="gnome-open"
alias lf="ls -l | egrep -v '^d'"
alias ldir="ls -l | egrep '^d'"
alias syncGLab="mountGLab;mountNX;rsync -r /home/sam/glab/IAPS/analysis/scripts/* /home/sam/NX/IAPS/Analysis/scripts/GLab/.;rsync -r /home/sam/glab/code/ /home/sam/NX/Template_Scripts/GLabFramework/."
alias syncGM="mountGLab;mountStudies;rsync -r /home/sam/glab/IAPS/analysis/scripts/* /home/sam/studies/IAPS/GLab/analysis/scripts/.;rsync -r /home/sam/glab/code/wrapper/ /home/sam/studies/IAPS/GLab/code/wrapper/"
alias syncMG="rsync -r /home/sam/studies/IAPS/GLab/code/wrapper/ /home/sam/glab/code/wrapper/"
alias gsmack="ssh -X samyag1@smack"
