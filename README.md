# Projeto: Stack de Monitoramento com Vagrant, Ansible, Docker, Zabbix e Grafana

## Visão Geral
Este projeto demonstra a orquestração completa de uma stack de monitoramento utilizando as melhores práticas de DevOps e SRE. Utiliza:

- **Vagrant + Box RockLinux**: Para provisionamento de ambiente leve.
- **Ansible (ansible_local)**: Para instalação e orquestração automatizada.
- **Docker**: Para isolamento e gerenciamento de containers.
- **Zabbix + MySQL**: Monitoramento principal com backend persistente.
- **Grafana**: Visualização e dashboards com plugin Zabbix instalado.

---

## Estrutura de Diretórios
```
lab_rocklinux/
├── Vagrantfile
├───ansible
│   ├── ansible.cfg   
│   ├── inventory/hosts
│   ├───playbooks
│   ├───roles
│   │   ├───common
│   │   │   └───tasks/main.yml
│   │   ├───docker
│   │   │   ├───defaults
│   │   │   ├───handlers
│   │   │   ├───tasks/main.yml
│   │   │   └───vars
│   │   ├───grafana
│   │   │   ├───files
│   │   │   │   └───provisioning
│   │   │   └───tasks/main.yml
│   │   └───zabbix
│   │       └───tasks/main.yml
│   └───vars
└───stacks
    ├───grafana
    │   └───provisioning
    │       └───datasources
    └───zabbix
        └───data
            ├───mysql
            │   └───init
            └───zabbix
                └───web
```