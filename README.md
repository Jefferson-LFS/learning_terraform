# Intro - Terraform

Terraform é uma ferramenta de código aberto desenvolvida pela HashiCorp que permite a automação da infraestrutura como código (IaC). Com o Terraform, você pode definir sua infraestrutura, incluindo servidores, redes e recursos em nuvem, usando a linguagem HCL de configuração simples e declarativa.

<img src="https://developer.hashicorp.com/_next/image?url=https%3A%2F%2Fwww.datocms-assets.com%2F2885%2F1679095195-devdot-terraform_lm.png&w=1920&q=75" width="510" height="310">

fonte: https://developer.hashicorp.com/terraform


### Lab de Exemplo


1. Clonar o reposiotório:

```bash
git clone https://github.com/Jefferson-LFS/learning_terraform.git
cd learning_terraform/instance
```
2. Executar a CLI do Terraform em um container Docker:

```bash
docker run -it -v $PWD:/app -w /app --entrypoint "" hashicorp/terraform:light sh
```
3. Exportar as credencias de acesso do provider para dentro do continer, no caso da AWS, devesse criar um usuário IAM, que terá permissões para interagir com os recursos da AWS: 

```bash
export AWS_ACCESS_KEY_ID=your_access_key
export AWS_SECRET_ACCESS_KEY=your_secret_key
```

4. Inicialização do Diretório de Trabalho:
```bash
terraform init -upgrade
```
 A opção ```-upgrade```, permite atualizar para as versões mais recentes dos providers e módulos que estão sendo usandos.


5. Visualize as alterações planejadas: 
```
/app/instance# terraform plan -out="tfplan.out"
data.aws_ami.ubuntu-west-2: Reading...
data.aws_ami.ubuntu: Reading...
data.aws_ami.ubuntu: Read complete after 1s [id=ami-0ff834984748eaef2]
data.aws_ami.ubuntu-west-2: Read complete after 5s [id=ami-0bc352e1396b4c9b6]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.web-west-2 will be created
  + resource "aws_instance" "web-west-2" {
      + ami                                  = "ami-0bc352e1396b4c9b6"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)

...
```

A opção ```-out``` permite especificar um arquivo onde o plano de execução será salvo. Neste exemplo o plano é salvo em um arquivo chamado "tfplan.out". Este arquivo contém uma representação serializada das alterações planejadas.