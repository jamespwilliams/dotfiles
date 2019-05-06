export PATH=$PATH:~/mac-i686-elf-gcc-binaries/bin
export PATH=$PATH:/Users/jw/pintos/pintos_23/src/utils
export PATH=$PATH:/Users/jw/Library/Python/3.7/bin
export PATH=$PATH:/Users/jw/Downloads/apache-maven-3.6.0/bin
function pintos2() {
	pintos -v -k -T 60 --qemu  --filesys-size=2 -p tests/userprog/$1 -a $1 -g test.txt -- -q -f run $1
}
alias sisctus='rlwrap /usr/local/sicstus4.4.1/bin/sicstus'

function uni_mode() {
    git config user.name "James Williams"
    git config user.email "james.williams17@imperial.ac.uk"
}
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home
alias shell1='ssh jw1317@shell1.doc.ic.ac.uk'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

