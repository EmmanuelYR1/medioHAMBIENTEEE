# Aplicación Web Educativa - Conciencia Ambiental

Una plataforma web interactiva desarrollada con Flask para concientizar sobre el cuidado del medio ambiente.

## 📋 Descripción

Esta aplicación educativa web proporciona información clara y bien organizada sobre temas ambientales:
- Importancia del cuidado del medio ambiente
- Sistema de Gestión Ambiental (SGA)
- Futuro del planeta para las futuras generaciones
- Las 3 R: Reducir, Reutilizar y Reciclar

## 🎨 Características

✅ **Diseño responsivo** - Funciona en desktop, tablet y móvil
✅ **Menú de navegación moderno** - Barra de navegación con Bootstrap 5
✅ **Migas de pan (Breadcrumbs)** - Navegación clara para el usuario
✅ **Imágenes de alta calidad** - Imágenes de Unsplash relacionadas a cada tema
✅ **Diseño profesional** - Tarjetas informativas y alertas contextuales
✅ **Accesibilidad** - HTML semántico y estructura clara

## 🛠️ Tecnologías

- **Backend**: Flask (Python)
- **Frontend**: Bootstrap 5, HTML5, CSS3
- **Servidor**: Python with Werkzeug
- **Imágenes**: Unsplash (imágenes libres de derechos de autor)

## 📁 Estructura del Proyecto

```
app/
├── app.py                    # Aplicación principal Flask
├── templates/
│   ├── base.html            # Plantilla base (navbar, breadcrumbs, footer)
│   ├── index.html           # Página principal
│   ├── sistema.html         # Sistema de Gestión Ambiental
│   ├── futuro.html          # Futuro del Planeta
│   └── tres_r.html          # Las 3 R: Reducir, Reutilizar, Reciclar
└── static/
    └── images/              # Carpeta para imágenes locales
```

## ⚙️ Requisitos

- Python 3.7+
- Flask 3.0+
- Navegador web moderno

## 🚀 Instalación y Ejecución

### 1. Clonar el repositorio
```bash
git clone https://github.com/DwyMX/medioHAMBIENTEEE.git
cd medioHAMBIENTEEE
```

### 2. Crear entorno virtual
```bash
python -m venv venv
# Windows
venv\Scripts\activate
# macOS/Linux
source venv/bin/activate
```

### 3. Instalar dependencias
```bash
pip install flask
```

### 4. Ejecutar la aplicación
```bash
cd app
python app.py
```

### 5. Abrir en el navegador
```
http://127.0.0.1:5000/
```

## 📄 Rutas disponibles

| Ruta | Descripción |
|------|-------------|
| `/` | Página principal - Importancia del medio ambiente |
| `/sistema-ambiental` | Sistema de Gestión Ambiental |
| `/futuro` | Futuro del Planeta |
| `/tres-r` | Las 3 R: Reducir, Reutilizar, Reciclar |

## 🎓 Objetivos de Aprendizaje

Al completar este proyecto se aprende:

### Backend
- Rutas en Flask
- Renderizado de plantillas Jinja2
- Arquitectura MVC básica
- Estructura de proyectos Flask

### Frontend
- Bootstrap 5
- Diseño responsivo
- Navegación profesional
- Componentes UI modernos

### Conceptual
- Conciencia ambiental
- Presentación de información
- UX/UI (Experiencia de usuario)
- Comunicación visual

## 🎯 Futuras mejoras

- [ ] Agregar formulario de contacto
- [ ] Integrar base de datos
- [ ] Agregar animaciones CSS
- [ ] Implementar sistema de login
- [ ] Agregar videos educativos
- [ ] Crear blog de tips ambientales

## 📝 Notas importantes

- Las imágenes se cargan desde Unsplash (online)
- La aplicación no requiere base de datos
- Compatible con Python 3.7+
- Todos los recursos son libres de derechos

## 👨‍💻 Autor

Desarrollado como actividad educativa en desarrollo web con Flask.

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la Licencia MIT.

---

**Última actualización**: Febrero 10, 2026
