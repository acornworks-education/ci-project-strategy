# projectset-microservice-strategy
Strategy Microservice ProjectSet


brew install gnupg

https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key


gpg --full-generate-key
gpg --list-secret-keys --keyid-format=long
gpg --armor --export 여기다

지울때 
gpg --delete-secret-key 

brew install pinentry-mac
echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf 
killall gpg-agent && gpg-agent --daemon

git config --global gpg.program gpg
git config --global user.signingkey 6BC035D6E140E7A1
git config --global commit.gpgsign true
git config --global user.email a@b.com


git config --global --unset user.email
git config --global --unset commit.gpgsign
git config --global --unset gpg.program