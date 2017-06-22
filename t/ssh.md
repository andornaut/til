# SSH

## Agent forwarding

- [Howto](https://developer.github.com/guides/using-ssh-agent-forwarding/)

## Share connections
```
mkdir -p ~/.ssh/controls
chmod 700 ~/.ssh/controls
echo '
Host * 
ControlMaster auto 
ControlPath ~/.ssh/controls/%r@%h-%p 
ControlPersist 600' >> ~/.ssh/config
```
