# Cryptography

## Change homedir encryption password
```
$ ecryptfs-mount-private 
$ ecryptfs-unwrap-passphrase  >  ~/.ecryptfs/unwrapped-passphrase
# Re-wrap the mount passphrase with the new login password
$ ecryptfs-rewrap-passphrase ~/.ecryptfs/wrapped-passphrase
```

## Encrypt storage device
```
# Format with: 
dd bs=512 count=4 if=/dev/urandom of=~/.private/disk-key iflag=fullblock
cryptsetup luksFormat ${device}
# Add key to existing
cryptsetup luksAddKey  ${device} ~/.private/disk-key

# n.b. mkfs must run on the *mapper* device, not on ${device}, which holds the LUKS header
cryptsetup luksOpen ${device} ${vol_name}
mkfs.ext4 /dev/mapper/${vol_name} -L ${vol_name}
mount /dev/mapper/${vol_name} /media/${vol_name}
```

## Generate CSR
```
domain=example.com
openssl req -new -newkey rsa:2048 -nodes -keyout ${domain}.key -out ${domain}.csr
```

## Inspect a CSR or certificate
```
openssl req -in ${domain}.csr -noout -text
openssl x509 -in ${domain}.crt -noout -text

# Just the validity dates and the subject alternative names
openssl x509 -in ${domain}.crt -noout -dates -ext subjectAltName

# Confirm that a key and a certificate belong together: the two digests must match
openssl rsa -in ${domain}.key -noout -modulus | openssl sha256
openssl x509 -in ${domain}.crt -noout -modulus | openssl sha256

# Inspect the certificate that a server actually presents
openssl s_client -connect ${domain}:443 -servername ${domain} </dev/null \
  | openssl x509 -noout -subject -issuer -dates
```
