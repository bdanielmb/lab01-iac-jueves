# Lab01 - IaC (Infraestructura como Código)

Proyecto de despliegue de dos aplicaciones web usando Docker y Docker Compose, con controlde versión mediante Gitflow y Conventional Commits.

## 📋 Tareas Completadas

- ✅ Desplegar dos web (Web01 y Web02) mostrando su contenido distintivo
- ✅ Los puertos están configurados en **4000** (Web01) y **4001** (Web02)
- ✅ Estructura de carpetas organizada y clara
- ✅ Implementación de Gitflow con Conventional Commits

## 📁 Estructura del Proyecto

```
lab01-iac-jueves/
├── src/
│   ├── web01/
│   │   ├── Dockerfile          # Imagen Docker para Web01
│   │   ├── index.html          # Contenido Web01
│   │   └── .gitkeep
│   ├── web02/
│   │   ├── Dockerfile          # Imagen Docker para Web02
│   │   ├── index.html          # Contenido Web02
│   │   └── .gitkeep
│   └── web/                     # (Heredado)
├── iac/
│   └── docker-compose.yml       # Orquestación de servicios
├── .gitignore
└── README.md
```

## 🚀 Cómo Usar

### Requisitos
- Docker instalado
- Docker Compose instalado

### Desplegar las aplicaciones

```bash
cd iac
docker-compose up -d
```

### Acceder a las aplicaciones

- **Web01**: http://localhost:4000
- **Web02**: http://localhost:4001

### Detener los servicios

```bash
docker-compose down
```

## 📝 Gitflow & Conventional Commits

Este proyecto sigue Gitflow y Conventional Commits para mantener un historial limpio.

### Ramas utilizadas

- `main`: Rama de producción
- `develop`: Rama de desarrollo
- `feature/multi-web-deployment`: Rama de características

### Commits realizados

1. **chore**: Crear estructura de carpetas
2. **feat**: Web01 con Docker
3. **feat**: Web02 con Docker
4. **feat**: docker-compose para orquestación
5. **docs**: Actualizar README

---

**Autor:** bdanielmb  
**Fecha:** Abril 2026
