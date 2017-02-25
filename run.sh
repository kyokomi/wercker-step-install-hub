VERSION="$WERCKER_INSTALL_HUB_VERSION"
USER_EMAIL="$WERCKER_INSTALL_HUB_USER_EMAIL"
USER_NAME="$WERCKER_INSTALL_HUB_USER_NAME"
GITHUB_TOKEN="$WERCKER_INSTALL_HUB_GITHUB_TOKEN"

wget https://github.com/github/hub/releases/download/${VERSION}/hub-linux-amd64-${VERSION}.tgz
tar zxvf hub-linux-amd64-${VERSION}.tgz
rm hub-linux-amd64-${VERSION}.tgz
./hub-linux-amd64-${VERSION}/install

git config --global user.email ${USER_EMAIL}
git config --global user.name ${USER_NAME}

mkdir -p "$HOME/.config"
echo "https://${GITHUB_TOKEN}:@github.com" > "$HOME/.config/git-credential"
echo "github.com:
- oauth_token: $GITHUB_TOKEN
  user: $USER_NAME" > "$HOME/.config/hub"
