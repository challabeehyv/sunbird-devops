
ansible -m ping -i ./elastic-search/hosts all
ansible-playbook -i ./elastic-search/hosts ./elastic-search/main.yml

ansible -m ping -i ./kafka/hosts.yml all
ansible-playbook -i ./kafka/hosts.yml confluent.platform.all

ansible -m ping -i ./kubernetes/hosts all
ansible-playbook -i ./kubernetes/hosts ./kubernetes/main.yml -e kubernetes_init_host=k8s-ubuntu-0

ansible -m ping -i ./postgres/inventory all
ansible-playbook -i ./postgres/inventory ./postgres/deploy_pgcluster.yml

