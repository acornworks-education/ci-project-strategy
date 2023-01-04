# projectset-microservice-strategy
Strategy Microservice ProjectSet


brew install gnupg

https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key

gpg --armor --export 6BC035D6E140E7A1

echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf 
killall gpg-agent && gpg-agent --daemon
git config --global gpg.program gpg
git config --global user.signingkey 6BC035D6E140E7A1
git config --global commit.gpgsign true