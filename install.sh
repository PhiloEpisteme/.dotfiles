#!/bin/bash
# It is unsafe to run this program with root privileges.
if (( EUID == 0 )); then
    echo "Do not run this program with root permissions."
    exit 1
fi

# Add more install targets by appending to this list. <target>/<destination>
# where the destination is relative to the user's home directory and the target
# is relative to the .dotfiles path
declare -a SOURCE_TARGET_PAIRS=(
    "bash/bash_profile,.bash_profile"
    "bash/bashrc,.bashrc"
    "git/.gitconfig,.gitconfig"
    "tmux/.tmux.conf,.tmux.conf"
    "vim,.vim"
    "vim/vimrc,.vimrc"
)

echo "This script installs dotfiles for git, vim, bash, and tmux. Symlinks for the following files will be created in your home directory."
for PAIR in "${SOURCE_TARGET_PAIRS[@]}"; do
    IFS=',' read -r -a SOURCE_TARGET <<< "${PAIR}"
    echo "- ${SOURCE_TARGET[1]} from /.dotfiles/${SOURCE_TARGET[0]}"
done

read -p "Do you wish to continue? " -n 1 -r
echo
if [[ $REPLY != "y" ]]; then
    echo "Goodbye!"
    exit 0
fi

DOTFILES_PATH=${HOME}/.dotfiles
read -p "Full path to .dotfiles, leave blank for default [${DOTFILES_PATH}]: "
# Check if any response other than the empty string was given.
if [[ ! -z "$REPLY" ]]; then 
    DOTFILES_PATH=$REPLY
fi

# Check if the path exists
if [ -z "$DOTFILES_PATH" ]; then
    # If the path is not set or contains the empty string
    echo "Could not determine path for .dotfiles"
    exit 1
elif [ ! -d "$DOTFILES_PATH" ]; then 
    # If the path does not point to a directory
    echo "Directory does not exist: ${DOTFILES_PATH}"
    exit 1
fi

BACKUP_FILES=true
read -p "Do you wish to backup any currently installed dotfiles, y/n [y]: " -n 1 -r BACKUP
echo

for PAIR in "${SOURCE_TARGET_PAIRS[@]}"; do
    IFS=',' read -r -a SOURCE_TARGET <<< "${PAIR}"
    SOURCE=${DOTFILES_PATH}/${SOURCE_TARGET[0]}
    TARGET=${HOME}/${SOURCE_TARGET[1]}
    if [[ $BACKUP = "y" ]]; then
        # TODO: This backup time only has second sensitivity. We _really_ should
        # use something with finer grained detail.
        BACKUP_TIME="$(date +"%Y%m%d%H%M%S")"
        # Check for a symlink as well in case the symlink target does not exist.
        if [ -e "$TARGET" ] || [ -L "$TARGET" ]; then
            BACKUP_DESTINATION=${DOTFILES_PATH}/backups/${SOURCE_TARGET[1]}_${BACKUP_TIME}
            mv ${TARGET} ${BACKUP_DESTINATION}
            echo "Created backup of ${TARGET} at ${BACKUP_DESTINATION}"
        fi
    elif [[ $BACKUP != "n" ]]; then
        echo "Invalid input: ${REPLY}"
        exit 1
    else
        if [ -e "$TARGET" ]; then
            rm ${FILE}
            echo "Removed ${FILE}"
        fi
    fi
    ln -s ${SOURCE} ${TARGET}
done

echo "Install complete. You may need to source the new dot files."
