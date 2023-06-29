# Python

* [./Software Engineering](./software-engineering.md)

## Books

* [Effective Python](https://effectivepython.com/)
* [Fluent Python](https://www.oreilly.com/library/view/fluent-python/9781491946237/)
* [Learn Python 3 the Hard Way - A Very Simple Introduction to the Terrifyingly Beautiful World of Computers and Code](https://www.goodreads.com/book/show/35561829-learn-python-3-the-hard-way)
* [Programming Python](https://www.oreilly.com/library/view/programming-python-4th/9781449398712/)
* [Two Scoops of Django 3.x](https://www.feldroy.com/books/two-scoops-of-django-3-x)

## Newsletters

* [Pycoder's Weekly](https://pycoders.com/) - Stay Up-to-Date With Your Weekly Dose Of Python

## Set default versions (Ubuntu 18.04)

```
sudo update-alternatives --remove-all python
sudo update-alternatives --remove-all python3
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 0
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 0
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 1
```

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
