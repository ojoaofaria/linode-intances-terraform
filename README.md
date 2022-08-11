# Linode

[Linode](https://www.linode.com/lp/podcasts/?ifso=adt&utm_source=podcast&utm_medium=audio&utm_campaign=adt) é um provedor de serviços na nuvem como a AWS, Azure e etc...

Eu resolvi usá-lo nesse laboratório pois eles dão 100 dólares de crédito para utilização, dessa forma posso criar a minha estrutura para treinamento sem custo.

# Qual o cenário proposto?

Ambiente utilizado para treinamento de instalação e manutenção de laboratório com K8S.

Vamos criar uma estrutura com 7 maquinas para instalação manual do K8s.

- 3 para utilização como master com 4GB de RAM.
- 3 para utilização como worker com 2GB de RAM.
- 1 para utilização como loadbalancer (HA Proxy) com 1GB de RAM.

# Por onde começar?

Baixe e instale o [Terraform](https://www.terraform.io/downloads), de acordo com seu sistema.

Após instalado execute dentro do diretório em que estão os arquivos baixados aqui:

```
terraform init # Para iniciar o terraform.
terraform plan -out infra # Para analisar o que será construido no provedor e verificar se está tudo como esperado.
terraform apply infra # Para aplicar o que foi mostrado no comando anterior, a palavra "infra" pode ser alterada nos dois comandos conforme sua decisão.
terraform destroy # Para destruir as intancias criadas anteriormente.
```
