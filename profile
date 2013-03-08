# ------------------------------------------------------------------------------
#  Vars                                                                     {{{1
# ------------------------------------------------------------------------------
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export TERM=xterm-256color
export EDITOR=vim
export PAGER=less
export LESS='-RM'
export VISUAL=vim
export NODE_PATH=/opt/local/lib/node_modules
export DROPBOX=/Users/axolx/Dropbox
export JAVA_HOME=/Library/Java/Home
export GEM_PATH=/opt/local/lib/ruby/gems/1.8
export EC2_HOME=${DROPBOX}/lib/ec2-api-tools
export AWS_CLOUDWATCH_HOME=${DROPBOX}/lib/CloudWatch

# ------------------------------------------------------------------------------
#  Bin paths                                                                {{{1
# ------------------------------------------------------------------------------
PATH=/opt/local/apache2/bin:$PATH
PATH=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH
PATH=/opt/local/lib/mysql5/bin:$PATH
PATH=/opt/local/lib/postgresql91/bin:$PATH
PATH=$DROPBOX/local/bin:$PATH
PATH=.:/opt/local/bin:/opt/local/sbin:$PATH
PATH=$PATH:/Users/axolx/Dropbox/lib/scripts
PATH=$PATH:$EC2_HOME/bin
PATH=$PATH:$AWS_CLOUDWATCH_HOME/bin
PATH=$PATH:/usr/local/bin

# ------------------------------------------------------------------------------
#  Man paths                                                                {{{1
# ------------------------------------------------------------------------------
MANPATH=`/usr/bin/manpath -q`
MANPATH=/opt/local/man:$MANPATH
MANPATH=/opt/local/share/man:$MANPATH
export MANPATH

# ------------------------------------------------------------------------------
#  virtualenvwrapper.sh                                                     {{{1
# ------------------------------------------------------------------------------
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/sandbox/envs
source /opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh
