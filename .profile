
# test for an interactive shell. there is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.

if [[ $- != *i* ]]
then
    # shell is non-interactive. be done now!
    return
fi

# load all files from .profile.d directory
if [ -d $HOME/.profile.d ]
then
    for file in $HOME/.profile.d/*
    do
        if [[ -f $file ]]
        then
            . $file
        fi
    done
fi

# vim: syntax=sh
