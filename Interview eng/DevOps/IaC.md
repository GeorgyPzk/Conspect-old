# Infrastructure as code (IaC)

IaC — это подход для управления и описания инфраструктуры через конфигурационные файлы, а не через ручное редактирование конфигураций на серверах.

IaC - позволяет автоматически разворачивать, обновлять инфраструктуру через конфирурационные файлы специальных интструментов (Terraform, Ansible)

## IaC better when script?

Например terraform при повторном запуске обновляет инфраструктуру, которая уже запущена и приводит ее к состоянию конфигурационном файле(в том случае если инфраструктура создавалась с terraform, рабочет с помощью .tfstate file). Обычные команды или скрипты на выход дадут ошибку, т.к инфраструктура уже существует.



# Infrastructure as code (IaC)

IaC — it is an approach(подход) to manage and describe the infrastructure with configuration files, without manually editing a configurations on the servers. You can automatically deploy, update the infrastructure through the configuration files of special tools special tools (Terraform, Ansible)

Tools for Iac from clouds?