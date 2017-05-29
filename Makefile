#!/usr/bin/env make -f

ROLE_NAME:=vagrant-base
IMAGE:=naftulikay/centos-vm:latest

.PHONY: all

test:
	# Stop the VM if it's running
	@tests/runc status >/dev/null && tests/runc stop || true
	# Start the VM
	@tests/runc start $(IMAGE) $(SYSTEMD)
	# Install Galaxy Dependencies
	@tests/runc exec ansible-galaxy install -r /etc/ansible/roles/vagrant-base/tests/requirements.yml
	# Run Playbook
	tests/runc exec ansible-playbook -e vagrant_shell=zsh /etc/ansible/roles/$(ROLE_NAME)/tests/playbook.yml
