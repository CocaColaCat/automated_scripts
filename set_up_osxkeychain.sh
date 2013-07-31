if !(git credential-osxkeychain)
then
  curl -s -O http://github-media-downloads.s3.amazonaws.com/osx/git-credential-osxkeychain
  chmod u+x git-credential-osxkeychain
  sudo mv git-credential-osxkeychain "$(dirname $(which git))/git-credential-osxkeychain"
  git config --global credential.helper osxkeychain
fi
