# Ansible

* [Jinja](https://jinja.palletsprojects.com/en/latest/)
  * [Filters](https://jinja.palletsprojects.com/en/latest/templates/#list-of-builtin-filters)
  * [Tests](https://jinja.palletsprojects.com/en/latest/templates/#list-of-builtin-tests)

## Debugging

* [Setup module docs](http://docs.ansible.com/ansible/setup_module.html)

```
# Display local facts
ansible -m debug -a "var=hostvars[inventory_hostname]" $host

# Display facts from all hosts
ansible all -m setup
```

## Ansible Galaxy

```
# Create role
ansible-galaxy init role_name
```
