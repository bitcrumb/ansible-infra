install:
	brew install python pre-commit yamllint ansible-lint
	ansible-galaxy install -r requirements.yaml
	pre-commit install
	make play_ping

play_ping:
	ansible-playbook -v playbooks/ping.yaml

play_macos: play_macos_provisioning

play_dev:
	ansible-playbook -v playbooks/dev.yaml

play_macos_provisioning:
	ansible-playbook -v playbooks/macos-provisioning.yaml --ask-become-pass

play_pi_provisioning: play_pi

play_pi_provisioning:
	ansible-playbook -v playbooks/pi-provisioning.yaml

play_pi_home_assistant:
	ansible-playbook -v playbooks/pi-home-assistant.yaml

play_pi_unifi_controller:
	ansible-playbook -v playbooks/pi-unifi-controller.yaml

play_pi_maintenance:
	ansible-playbook -v playbooks/pi-maintenance.yaml
