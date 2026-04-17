resource "docker_network" "app_network"{
    name = "network-${var.entorno}"
}

resource "docker_image" "frontend_img"{
    name = "frontend-img-${var.entorno}"
    build {
        context    = "../src/web"  # <- Ruta actualizada
        dockerfile = "Dockerfile"  # <- Nombre actualizado
    }
}

resource "docker_image" "backend_img"{
    name= "backend-img-${var.entorno}"
    build {
        context    = "../src/api"  # <- Ruta actualizada
        dockerfile = "Dockerfile"  # <- Nombre actualizado
    }
}

resource "docker_container" "frontend"{
    name  = var.prefijo_nombre
    image = docker_image.frontend_img.image_id
    ports {
        internal = 80
        external = var.puerto_frontend
    }
    networks_advanced { name = docker_network.app_network.name }
}

resource "docker_container" "backend"{
    name  = "api01-${var.entorno}"
    image = docker_image.backend_img.image_id
    ports {
        internal = 4002
        external = var.puerto_backend
    }
    networks_advanced { name = docker_network.app_network.name }
}


resource "docker_container" "db"{
    name  = "db01-${var.entorno}"
    image = "postgres:alpine" 
    env = [
        "POSTGRES_PASSWORD=rootpassword",
        "POSTGRES_DB=mi_db"
    ]
    ports {
        internal = 5432 
        external = var.puerto_db
    }
    networks_advanced { name = docker_network.app_network.name }
}