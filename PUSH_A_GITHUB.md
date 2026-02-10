# 📤 Instrucciones para subir el proyecto a GitHub

## Opción 1: Usando PowerShell Script (Recomendado)

### Requisitos previos:
- Git instalado en Windows
- Acceso a la terminal de PowerShell con permisos de administrador

### Pasos:

1. **Abre PowerShell como Administrador**
   - Click derecho en PowerShell
   - Selecciona "Ejecutar como administrador"

2. **Ejecuta el script**
   ```powershell
   cd c:\Users\Dwyem\mis_ambientes_py_1
   .\push-to-github.ps1
   ```

3. **Sigue las instrucciones**
   - El script te pedirá tu email de GitHub (si no está configurado)
   - Te pedirá tu nombre de usuario
   - Se abrirá una ventana de autenticación
   - Autoriza el acceso a GitHub

---

## Opción 2: Manualmente paso a paso

### 1. Instalar Git

**Windows 10/11:**
```powershell
winget install Git.Git
```

Si tienes Chocolatey:
```powershell
choco install git
```

O descarga desde: https://git-scm.com/download/win

### 2. Abrir PowerShell como Administrador

### 3. Navega a la carpeta del proyecto
```powershell
cd c:\Users\Dwyem\mis_ambientes_py_1
```

### 4. Inicializa el repositorio
```powershell
git init
```

### 5. Configura tu usuario (primera vez solamente)
```powershell
git config user.email "tu-email@gmail.com"
git config user.name "Tu Nombre"
```

### 6. Agrega el remoto
```powershell
git remote add origin https://github.com/DwyMX/medioHAMBIENTEEE.git
```

### 7. Agrega todos los archivos
```powershell
git add -A
```

### 8. Crea un commit
```powershell
git commit -m "Aplicación Web Educativa - Conciencia Ambiental"
```

### 9. Sube al repositorio
```powershell
git push -u origin main
```

**Nota:** Si tienes rama `master` en lugar de `main`:
```powershell
git push -u origin master
```

---

## Opción 3: Usando GitHub Desktop

1. Descarga GitHub Desktop: https://desktop.github.com/
2. Instala y autentica con tu cuenta de GitHub
3. Selecciona "Add Local Repository"
4. Elige la carpeta del proyecto
5. Haz click en "Publish Repository"

---

## Opción 4: Usando Git Bash

1. Instala Git
2. Click derecho en la carpeta del proyecto
3. Selecciona "Git Bash Here"
4. Ejecuta los comandos de la Opción 2 (sin 'powershell')

---

## Archivos que se subirán

```
medioHAMBIENTEEE/
├── app/
│   ├── app.py
│   ├── templates/
│   │   ├── base.html
│   │   ├── index.html
│   │   ├── sistema.html
│   │   ├── futuro.html
│   │   └── tres_r.html
│   └── static/
│       └── images/
├── README.md
├── .gitignore
└── push-to-github.ps1
```

---

## Verificar que el push fue exitoso

1. Ve a: https://github.com/DwyMX/medioHAMBIENTEEE.git
2. Deberías ver tu código aquí
3. Los cambios aparecen en la rama `main` o `master`

---

## Problemas comunes

### Error: "Permission denied (publickey)"
**Solución:** Configura SSH keys de GitHub
```powershell
ssh-keygen -t ed25519 -C "tu-email@gmail.com"
```

### Error: "remote already exists"
**Solución:** Elimina el remoto y agrégalo de nuevo
```powershell
git remote remove origin
git remote add origin https://github.com/DwyMX/medioHAMBIENTEEE.git
```

### No puedo encontrar PowerShell
**Solución:** 
- Centro de búsqueda de Windows
- Escribe "PowerShell"
- Click derecho → Ejecutar como administrador

---

## Para futuras actualizaciones

Una vez que hayas hecho el push inicial, para futuras actualizaciones:

```powershell
cd c:\Users\Dwyem\mis_ambientes_py_1
git add -A
git commit -m "Descripción de los cambios"
git push origin main
```

---

**¿Necesitas ayuda?** Contacta al docente o consulta la documentación oficial de Git.
