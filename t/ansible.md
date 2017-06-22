# Ansible

## Debugging

[setup module docs](http://docs.ansible.com/ansible/setup_module.html)

```
# Display local facts
ansible -m debug -a "var=hostvars[inventory_hostname]" $host

# Display facts from all hosts
ansible all -m setup
```
