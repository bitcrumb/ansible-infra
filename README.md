# Ansible Playbooks for Pi

![CI](https://github.com/bitcrumb/ansible-pi/workflows/CI/badge.svg)

## Getting started

Run the command below to setup all necessary dependencies. Just make sure you have `brew` installed to start off.

```shell
$ make install
```

## Playbooks

### Maintenance

Perform regular maintenance on the entire inventoy by running the **maintenance** playbook.

```
$ ansible-playbook -v playbooks/maintenance.yaml
```

### Unifi Controller

Install the Unifi Controller to perform network monitoring by running the **unifi** playbook.

```
$ ansible-playbook -v playbooks/unifi.yaml
```

You can now visit the [web interface](https://raspberrypi.local:8443/) of the Unifi Controller.

### Home Assistant

Install Home Asssitant (Supervised) by running the **home-assistant** playbook.

```
$ ansible-playbook -v playbooks/home-assistant.yaml
```

You can now visit the [web interface](https://raspberrypi.local:8123/) of Home Assistant.
