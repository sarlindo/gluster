vagrant halt
vagrant destroy -f
rm -Rf ~/.ssh/know*
vagrant up
ansible-playbook playbook.yml -i ./hosts
