install:
	brew install pre-commit yamllint ansible-lint
	ansible-galaxy install -r requirements.yaml
	pre-commit install
	make play_ping

play_ping:
	ansible-playbook -v playbooks/ping.yaml

play_dev:
	ansible-playbook -v playbooks/dev.yaml

play_macos:
	ansible-playbook -v playbooks/macos/main.yaml --ask-become-pass
