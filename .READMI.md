# 🚀 Terraform: Primeros Pasos

## Introducción

Este repositorio contiene el código y los pasos para iniciar tu viaje con **Terraform**, una herramienta clave para la **Infraestructura como Código (IaC)**.

---

## Requisitos

Para seguir esta guía, solo necesitarás:

* **Docker**

### ¿Qué es LocalStack?

**LocalStack** es un **simulador de servicios de AWS** que se ejecuta en tu máquina. Permite desarrollar y probar tus configuraciones de AWS de forma local y gratuita, ideal para aprender Terraform sin usar recursos en la nube real. ¡Es un AWS en miniatura en tu equipo!

---

## Pasos de Instalación

### 1\. Clonar el repositorio

```bash
git clone https://github.com/Jesus-CP/Terraform.git
cd Terraform
```

### 2\. Instalar LocalStack

Instala el simulador de AWS para tu entorno local.

#### Linux

```bash
sudo tar xvzf ~/Downloads/localstack-cli-2.2.0-linux-*-onefile.tar.gz -C /usr/local/bin
```

Más información: [Documentación de Instalación de LocalStack](https://docs.localstack.cloud/getting-started/installation/)

### 3\. Iniciar LocalStack

Asegúrate de que Docker esté activo y luego inicia LocalStack:

```bash
localstack start
```

### 4\. Instalar tfenv

Gestor de versiones de Terraform:

```bash
git clone --depth=1 [https://github.com/tfutils/tfenv.git](https://github.com/tfutils/tfenv.git) ~/.tfenv
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile # O .zshrc, dependiendo de tu shell
```

### 5\. Instalar Terraform

```bash
tfenv install latest
```

### 6\. Iniciar el proyecto

```bash
terraform init
```

¡Listo! Ya tienes todo para empezar a aprender Terraform.

---

## Comandos Útiles

| Comando            | Descripción                                                                 |
| :----------------- | :-------------------------------------------------------------------------- |
| `terraform init`   | Inicializa el proyecto, descarga proveedores y módulos.                     |
| `terraform plan`   | Muestra los cambios a realizar en tu infraestructura.                       |
| `terraform apply`  | Aplica los cambios y crea/modifica los recursos.                            |
| `terraform destroy`| Destruye todos los recursos creados por la configuración actual.            |
| `terraform fmt`    | Formatea el código de Terraform para mantener un estilo consistente.       |
| `terraform validate`| Valida la sintaxis y la lógica de la configuración.                         |