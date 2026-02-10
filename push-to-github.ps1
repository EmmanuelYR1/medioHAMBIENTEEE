#!/usr/bin/env powershell

# Script para subir el proyecto a GitHub
# Ejecutar como Administrador

Write-Host "=" -ForegroundColor Green
Write-Host "INICIANDO CONFIGURACIÓN DE GIT Y PUSH AL REPOSITORIO" -ForegroundColor Green
Write-Host "=" -ForegroundColor Green
Write-Host ""

# Navegar a la carpeta del proyecto
cd "c:\Users\Dwyem\mis_ambientes_py_1"

# 1. Inicializar repositorio git si no existe
if (-not (Test-Path ".git")) {
    Write-Host "[1/5] Inicializando repositorio Git..." -ForegroundColor Cyan
    git init
    Write-Host "✓ Repositorio inicializado" -ForegroundColor Green
} else {
    Write-Host "[1/5] El repositorio Git ya existe" -ForegroundColor Yellow
}

# 2. Configurar el remoto
Write-Host ""
Write-Host "[2/5] Agregando remoto origin..." -ForegroundColor Cyan
git remote remove origin 2> $null  # Eliminar si existe
git remote add origin https://github.com/DwyMX/medioHAMBIENTEEE.git
Write-Host "✓ Remoto configurado" -ForegroundColor Green

# 3. Configurar usuario (si es necesario)
Write-Host ""
Write-Host "[3/5] Configurando usuario de Git..." -ForegroundColor Cyan
$userEmail = git config user.email
if ([string]::IsNullOrEmpty($userEmail)) {
    Write-Host "Ingrese su email de GitHub: " -NoNewline
    $email = Read-Host
    Write-Host "Ingrese su nombre de usuario: " -NoNewline
    $name = Read-Host
    git config user.email $email
    git config user.name $name
    Write-Host "✓ Usuario configurado: $name ($email)" -ForegroundColor Green
} else {
    Write-Host "✓ Usuario ya configurado: $(git config user.name) ($(git config user.email))" -ForegroundColor Green
}

# 4. Agregar archivos
Write-Host ""
Write-Host "[4/5] Agregando archivos..." -ForegroundColor Cyan
git add -A
Write-Host "✓ Archivos agregados" -ForegroundColor Green

# 5. Hacer commit
Write-Host ""
Write-Host "[5/5] Creando commit..." -ForegroundColor Cyan
git commit -m "Aplicación Web Educativa - Conciencia Ambiental con Flask

- Backend: Flask con 4 rutas principales
- Frontend: Bootstrap 5 con diseño responsivo
- Incluye: Sistema de Gestión Ambiental, Futuro del Planeta, Las 3 R
- Imágenes: De alta calidad desde Unsplash
- Migas de pan (breadcrumbs) dinámicas
- Menú de navegación moderno"

Write-Host "✓ Commit creado" -ForegroundColor Green

# 6. Hacer push
Write-Host ""
Write-Host "[6/6] Haciendo push al repositorio..." -ForegroundColor Cyan
Write-Host ""
Write-Host "Nota: Se abrirá una ventana de autenticación de GitHub. " -ForegroundColor Yellow
Write-Host "Por favor, introduce tus credenciales." -ForegroundColor Yellow
Write-Host ""

git push -u origin main

Write-Host ""
Write-Host "=" -ForegroundColor Green
Write-Host "¡COMPLETADO!" -ForegroundColor Green
Write-Host "=" -ForegroundColor Green
Write-Host ""
Write-Host "Tu repositorio ha sido actualizado en:" -ForegroundColor Cyan
Write-Host "https://github.com/DwyMX/medioHAMBIENTEEE.git" -ForegroundColor White
Write-Host ""
