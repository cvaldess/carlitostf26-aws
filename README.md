# AWS VPC Terraform Project

Este proyecto crea una VPC en AWS con acceso a internet (Internet Gateway), una subred pública y las tablas de enrutamiento necesarias.

## Requisitos Previos

1.  **Terraform**: Debes tener Terraform instalado.
    *   Descarga: [https://www.terraform.io/downloads](https://www.terraform.io/downloads)
    *   Asegúrate de agregar la carpeta de binarios de Terraform a tu `PATH` del sistema.

2.  **Cuenta de AWS**: Necesitas una cuenta de AWS y credenciales de acceso (Access Key ID y Secret Access Key).

## Configuración de Credenciales AWS

Tienes varias opciones para configurar tus credenciales. **No se recomienda** escribirlas directamente en el código (`main.tf`) por seguridad.

### Opción 1: Variables de Entorno (Recomendado para pruebas rápidas)

En tu terminal (PowerShell), ejecuta:

```powershell
$env:AWS_ACCESS_KEY_ID="TU_ACCESS_KEY"
$env:AWS_SECRET_ACCESS_KEY="TU_SECRET_KEY"
$env:AWS_DEFAULT_REGION="eu-south-2"
```

### Opción 2: Archivo de Credenciales (Recomendado para uso frecuente)

Si tienes instalado el AWS CLI, ejecuta `aws configure`. Si no, crea manualmente un archivo en `C:\Users\TU_USUARIO\.aws\credentials` con el siguiente contenido:

```ini
[default]
aws_access_key_id = TU_ACCESS_KEY
aws_secret_access_key = TU_SECRET_KEY
```

Y un archivo `C:\Users\TU_USUARIO\.aws\config`:

```ini
[default]
region = eu-south-2
```

## Cómo Ejecutar

1.  **Inicializar**: Descarga los proveedores necesarios.
    ```bash
    terraform init
    ```

2.  **Planificar**: Revisa los cambios que se aplicarán.
    ```bash
    terraform plan
    ```

3.  **Aplicar**: Crea los recursos en AWS.
    ```bash
    terraform apply
    ```
    Escribe `yes` cuando se te solicite confirmación.

4.  **Destruir**: Para borrar todo lo creado y evitar cobros.
    ```bash
    terraform destroy
    ```

## Variables

Puedes personalizar la configuración en `variables.tf` o pasando flags:

```bash
terraform apply -var="region=eu-west-1" -var="vpc_cidr=192.168.0.0/16"
```
