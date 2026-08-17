# Apache

## Describe virtualhost configuration

```bash
apache2ctl -S
```

## Test the configuration

```bash
apache2ctl configtest
```

## Enable and disable sites and modules

```bash
# Sites are configured in /etc/apache2/sites-available/ and symlinked into sites-enabled/
$ sudo a2ensite ${site}
$ sudo a2dissite ${site}

$ sudo a2enmod ${module}
$ sudo a2dismod ${module}

# Apply the changes
$ sudo systemctl reload apache2
```

## Logs

```bash
tail -f /var/log/apache2/access.log /var/log/apache2/error.log
```
