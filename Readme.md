## Задача 0
Docker compose insted of docker-compose:\
![Docker-compose](./screnshots/task-5.0.png)
## Задача 1
Starting and testing project:
![start](./screnshots/task-5.1.1.png)
## Задача 3
Sql query:
![sql](./screnshots/task-5.3-sql.png)
## Задача 4
Sql query on Yandex Cloud VM:
![sql_ya.cloud](./screnshots/task-5.4-cloud-VM.png)
## Задача 6
Docker save(не получилось. пробовал двумя способами, в архиве нет нужного каталога.)\
Первый способ: 
>docker save -o hashicorp_terraform.tar hashicorp/terraform

![save.1](./screnshots/task-5.6-docker-save-1.png)

Второй способ:
>docker save hashicorp/terraform:latest | gzip > hashicorp_terraform.tar.gz

![save.2](./screnshots/task-5.6-docker-save-2.png)

Команды взяты из документации(+ Евгений подсказал):[Docker docs](https://docs.docker.com/reference/cli/docker/image/save/)
## Задача 6.1
Docker cp:
![docker_cp](./screnshots/task-5.6.1.png)
