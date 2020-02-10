#!/usr/bin/env bash

brew update
brew install gnupg git-crypt
gpg --full-generate-key

KEY_ID=$(gpg --list-secret-keys --keyid-format LONG | grep -e "^sec" | egrep -o '(([0-9a-fA-F]){16})')
echo KEY_ID=$KEY_ID
gpg --send-keys $KEY_ID
