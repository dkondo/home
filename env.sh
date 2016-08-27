#!/bin/zsh

# PATH

export SPARK_HOME="/Users/dkondo/spark-2.0.0-bin-hadoop2.7"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home"
export
PATH="/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/dkondo/bin:$SPARK_HOME/bin:/Users/dkondo/anaconda2/bin"


export EDITOR='emacs -nw'
# export PYTHONPATH=$PYTHONPATH
# export MANPATH="/usr/local/man:$MANPATH"


export PYTHONPATH=".:/Library/Python/2.7/site-packages:/usr/local/lib:$SPARK_HOME/python/lib/py4j-0.8.2.1-src.zip:$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.10.1-src.zip"

# Virtual Environment
export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/Projects
#source /usr/local/bin/virtualenvwrapper.sh

# Owner
export USER_NAME="YOUR NAME"
#eval "$(rbenv init -)"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases



alias cp='cp -i'	# prompt before overwriting file
alias mv='mv -i'	# prompt before overwriting file
alias rm='rm -i'	# promt before removing file
alias his='history'
#alias ls 'ls --color=auto'
alias ls='ls -GF'
alias ll='ls -alth | less -R'
alias less='less -iq'

alias cppcompile='c++ -std=c++11 -stdlib=libc++'

# Use sublimetext for editing config files
alias zshconfig="subl ~/.zshrc"
#alias envconfig="subl ~/Projects/config/env.sh"


alias top="top -o cpu" # top on mac has bad defaults
alias ws="cd ~/workspan-dev"
alias wn="cd ~/workspan-network"

alias devapp="dev_appserver.py --log_level=debug . wstasks.yaml |& tee /tmp/dev_appserver.out"
alias devappclean="dev_appserver.py --clear_datastore True --clear_search_indexes True . wstasks.yaml"
alias plandevapp="dev_appserver.py --log_level=debug . wstasks.yaml --datastore_path ~/derrick-plan-datastore |& tee /tmp/dev_appserver.plan.out"
alias plandevappclean="dev_appserver.py  --datastore_path ~/derrick-plan-datastore --clear_datastore True --clear_search_indexes True . wstasks.yaml"

alias nt='nosetests --with-ferris --nologcapture --nocapture'
alias send_invites='/Users/dkondo/workspan-network/tools/scripts/send_invites.sh'
#alias appcfgupdate='appcfg.py -A mca-derrick-1 update .'

alias deploy_mca1='tools/cloud_deploy.sh mca-derrick-1 . && appcfg.py -A mca-derrick-1 set_default_version -V 1 && appcfg.py -A mca-derrick-1 set_default_version -M wstasks -V $version'




alias appcfgupdate='/Users/dkondo/workspan-network/tools/cloud_deploy.sh mca-derrick-1'
alias builddev='/Users/dkondo/workspan-network/tools/cloud_deploy.sh mca-derrick-1'
alias wnb='cd ~/workspan-network/backend'
alias wnbn='cd ~/workspan-network/backend/network'
alias wnf='cd ~/workspan-network/frontend'
alias wnpl='cd ~/workspan-network/backend/app/marketing_plan'

alias troom='nt ~/workspan-network/backend/test/network/room/test_room.py && nt ./backend/test/app/marketing_campaign/test_create.py:TestCreate.test_create_update_rooms && nt ./backend/test/app/marketing_fund/test_create.py:TestCreate.test_create_update_rooms'
alias tmhistory='nt ~/workspan-network/backend/test/network/mhistory/test_mhistory.py'
alias ttagging='nt ~/workspan-network/backend/test/network/tagging/test_tagging.py'
alias ttasks='nt ~/workspan-network/backend/test/network/task/test_task.py'
alias ttoggle='nt ~/workspan-network/backend/test/network/toggle/test_toggle.py'
alias tlist='nt ~/workspan-network/backend/test/network/list/test_list.py'
alias ttoken='nt ~/workspan-network/backend/test/network/wswtoken/test_wswtoken.py'
alias tinvite='nt ~/workspan-network/backend/test/app/marketing_campaign/test_invite.py'
alias temail='nt ~/workspan-network/backend/test/network/email/test_email.py'
alias ttask='nt ~/workspan-network/backend/test/network/task/test_task.py'
alias bootstrap='tools/run_local.sh tools/bootstrap.sh'
alias fe='cd ~/workspan-network/frontend && gulp serve:dev'
alias bfe='cd ~/workspan-network && make frontend && cd ~/workspan-network/frontend && gulp serve:dev'
alias createcampaigns='cd ~/workspan-network/tools && ./run_local.sh ../backend/test/testdata/scripts/create_campaigns.py -U derrick@workspan.com --cmd bootstrap --save /tmp/campaigns.new'
alias ap='autopep8 -i -a --ignore=E309'
alias vjson='python -mjson.tool'
alias cdr='cd ~/workspan-network/backend/network/room'
alias gse='gulp serve:dev --secure=true'
