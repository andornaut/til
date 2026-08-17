# SSH

## Keys

```bash
ssh-keygen -t ed25519 -C 'andornaut@example.com'

# Copy the public key to a remote host's ~/.ssh/authorized_keys
ssh-copy-id ${host}

# Print a key's fingerprint
ssh-keygen -lf ~/.ssh/id_ed25519.pub
```

## Agent forwarding

- [Howto](https://developer.github.com/guides/using-ssh-agent-forwarding/)

```bash
# Start an agent, then add a key to it
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# List the keys the agent holds
ssh-add -l

# Forward the agent for a single connection
ssh -A ${host}
```

n.b. Only forward to hosts that you trust: anyone who can read the forwarded socket on the remote host - including root - can use your keys for as long as the connection is open.

## Share connections

```bash
mkdir -p ~/.ssh/controls
chmod 700 ~/.ssh/controls
echo '
Host *
ControlMaster auto
ControlPath ~/.ssh/controls/%r@%h-%p
ControlPersist 600' >> ~/.ssh/config
```
