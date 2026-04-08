# Proyecto DevOps

## Descripción del proyecto
Este proyecto implementa una solución de automatización en AWS que integra la gestión de instancias EC2 mediante Python (boto3) y el respaldo de información en S3 mediante Bash. Además, se utiliza Git y GitHub para el control de versiones y se simula un flujo CI/CD mediante scripts.

---

## Instrucciones de uso

1. Clonar el repositorio:
git clone <URL_DEL_REPO>

2. Entrar al proyecto:
cd project-devops

3. Configurar variables:
Editar el archivo config/config.env con los valores necesarios:
- INSTANCE_ID
- BUCKET_NAME
- DIRECTORY

4. Ejecutar el deploy:
./deploy.sh <accion> <instance_id> <directorio> <bucket>

Ejemplo:
./deploy.sh listar i-123456 ./data mi-bucket

También se puede ejecutar sin parámetros:
./deploy.sh listar

---

## Flujo Git

Se utilizó una estrategia de ramas:
- main: versión estable
- develop: integración
- feature/*: desarrollo de funcionalidades

Flujo:
Feature → Commit → Push → Merge → Deploy → AWS

---

## Ejemplos

Listar instancias:
./deploy.sh listar

Iniciar instancia:
./deploy.sh iniciar i-123456

Detener instancia:
./deploy.sh detener i-123456
