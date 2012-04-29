# ------------------------------------------------------------------------------
#  Vars                                                                     {{{1
# ------------------------------------------------------------------------------
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export TERM=xterm-color
export EDITOR="/opt/local/bin/mvim"
export PAGER=less
export LESS='-RM'
export VISUAL="mvim -f"
export NODE_PATH=/opt/local/lib/node_modules
export DROPBOX=/Users/axolx/Dropbox
export JAVA_HOME=/Library/Java/Home
export GEM_PATH=/opt/local/lib/ruby/gems/1.8
export EC2_HOME=${DROPBOX}/lib/ec2-api-tools
export AWS_CLOUDWATCH_HOME=${DROPBOX}/lib/CloudWatch
#export EC2_PRIVATE_KEY=${HOME}/.ec2/axolx-pk-RJUMGZU7325L4VUDQW6NUFAQG3TNBBCK.pem
#export EC2_CERT=${HOME}/.ec2/axolx-cert-RJUMGZU7325L4VUDQW6NUFAQG3TNBBCK.pem
export EC2_PRIVATE_KEY=${HOME}/.ec2/ombu-pk-J4TXTFWLUFVVOTGW5Q3RQKSHAKGC2KH2.pem
export EC2_CERT=${HOME}/.ec2/ombu-cert-J4TXTFWLUFVVOTGW5Q3RQKSHAKGC2KH2.pem
export AWS_CLOUDWATCH_HOME=${DROPBOX}/lib/CloudWatch

# ------------------------------------------------------------------------------
#  Bin paths                                                                {{{1
# ------------------------------------------------------------------------------
PATH=/opt/local/bin:/opt/local/sbin:$PATH
PATH=/opt/local/apache2/bin:$PATH
PATH=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH
PATH=/opt/local/lib/mysql5/bin:$PATH
PATH=$PATH:/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:.
PATH=$PATH:/Users/axolx/Dropbox/lib/scripts
PATH=$PATH:$EC2_HOME/bin
PATH=$PATH:$AWS_CLOUDWATCH_HOME/bin
PATH=$PATH:$DROPBOX/lib/php/drush
PATH=$PATH:$DROPBOX/bin

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
