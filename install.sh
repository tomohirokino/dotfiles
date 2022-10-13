ln -s $(pwd)/.zshrc ~/.zshrc
mkdir -pv ~/.sheldon/ && ln -s $(pwd)/plugins.toml ~/.sheldon/plugins.toml

brew bundle

git secrets --register-aws --global
git secrets --install ~/.git-templates/git-secrets
git config --global init.templateDir ~/.git-templates/git-secrets
