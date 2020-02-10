#!/usr/bin/env bash

KEY_ID=$1
gpg --recv-key $KEY_ID
git-crypt add-gpg-user --trusted $KEY_ID