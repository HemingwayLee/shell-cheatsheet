# In new mac, it switches to `zsh`

## Add color to terminal
```
echo 'export CLICOLOR=1' >> ~/.zshrc
echo 'alias ls="ls -G"' >> ~/.zshrc
echo 'alias ll="ls -lG"' >> ~/.zshrc
```

## Add `cdls` into `~/.zshrc`
```
cdls() {
    cd "${1}";
    ls;
}
alias cd='cdls'
```

* Run `source ~/.zshrc`

