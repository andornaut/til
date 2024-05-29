# Cryptography

## Change homedir encryption password
```
$ ecryptfs-mount-private 
$ ecryptfs-unwrap-passphrase  >  ~/.ecryptfs/unwrapped-passphrase
```

## Encrypt storage device
```
# Format with: 
dd bs=512 count=4 if=/dev/urandom of=~/.private/key iflag=fullblock
cryptsetup luksFormat ${device}
mkfs.ext4 ${device} -L ${vol_name}
# Add key to existing
cryptsetup luksAddKey  ${device} ~/.private/disk-key

cryptsetup luksOpen ${device} ${vol_name}
mount ${vol_name} /media/${vol_name}
```

## Generate CSR
```
domain=example.com
openssl req -new -newkey rsa:2048 -nodes -keyout ${domain}.key -out ${domain}.csr
```
