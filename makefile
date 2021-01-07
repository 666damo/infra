run-local:
	ansible-playbook --connection=local --inventory 127.0.0.1, --limit $(shell hostname) local.yml -i hosts --vault-password-file /run/secrets/ansible/vault-password

decrypt:
	ansible-vault decrypt --vault-password-file /run/secrets/ansible/vault-password vars/vault.yml

encrypt:
	ansible-vault encrypt --vault-password-file /run/secrets/ansible/vault-password vars/vault.yml

gitinit:
	@./git-init.sh
	@echo "ansible vault pre-commit hook installed"
	@echo "don't forget to create a .vault-password too"
