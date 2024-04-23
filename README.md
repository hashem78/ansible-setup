```
curl https://raw.githubusercontent.com/hashem78/ansible-setup/main/init.sh | bash
cd ansible-setup
ansible-playbook -u mythi --ask-become-pass --ask-vault-pass local.yaml
source ~/.bashrc
```
