# Ansible

* [Jinja](https://jinja.palletsprojects.com/en/latest/)
  * [Filters](https://jinja.palletsprojects.com/en/latest/templates/#list-of-builtin-filters)
  * [Tests](https://jinja.palletsprojects.com/en/latest/templates/#list-of-builtin-tests)

## Run a playbook

```bash
ansible-playbook site.yml

# Prompt for the become (sudo) password
ansible-playbook --ask-become-pass site.yml

# Dry-run, printing the changes that would be made
ansible-playbook --check --diff site.yml

# Restrict the run to some hosts, or to some tags
ansible-playbook --limit ${host} --tags ${tag} site.yml

# Print what would run, without running it
ansible-playbook --list-hosts --list-tasks --list-tags site.yml

# Increase verbosity, up to -vvvv
ansible-playbook -vv site.yml
```

## Ad-hoc commands

```bash
# Check that hosts are reachable
ansible all -m ping

ansible ${host} -m command -a 'uptime'
```

## Debugging

* [Setup module docs](https://docs.ansible.com/projects/ansible/latest/collections/ansible/builtin/setup_module.html)

```bash
# Display local facts
ansible -m debug -a "var=hostvars[inventory_hostname]" $host

# Display facts from all hosts
ansible all -m setup
```

## Ansible Galaxy

```bash
# Create role
ansible-galaxy init role_name
```
