# Python

## Devpi
```
# Login
$ devpi use http://localhost:3141
$ devpi login root --password=
$ devpi use root/pypi

# List indexes
$ devpi index -l

# Create index
$ devpi index -y -c public volatile=False
```

## Import gotchas
```
# fatal error: ffi.h: No such file or directory
$ sudo apt-get install libffi-dev

# Exception .... in <module> from Crypto.PublicKey import DSA
$ pip install pycrypto
```

## Pip
```
# Upgrade all installed packages
$ pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U
```
