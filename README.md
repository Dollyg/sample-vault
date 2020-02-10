# Setting git-crypt

To install gpg and git-crypt, and generate a new gpg-key for yourself run the below command:

`./setup.sh`

This command will do the following things:
* install git-crypt, gpg
* generate your gpg-key
* send your gpg-key to the key-server

For more details on generating gpg-key,
follow [link](https://help.github.com/en/github/authenticating-to-github/generating-a-new-gpg-key)

After this step, you have to ask someone whose gpg-key is trusted, to add your key to the trusted list.
Your Key_ID would have been logged in the `setup.sh` run, provide that to the trusted user to add you.
To add new members to trusted list, the trusted member has to run the following command:

`./admin.sh <KEY_ID>`

After the admin has added your key to trusted-keys, you should be able to run `git-crypt unlock`
and you should be able to see the passwords and secret keys in un-encrypted format.

