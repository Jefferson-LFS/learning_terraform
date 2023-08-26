crie uma instancia ec2 t2.micro usando TerraForm. Com as seguintes configurações:

- SO: Ubuntu 23.04

- Inciar via Docker:

docker run -it -v $PWD:/app -w /app --entrypoint "" hashicorp/terraform:light sh
