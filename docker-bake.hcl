variable "TEST" {
    default = "0.0.1"
}

target "default" {
    dockerfile = "Dockerfile"
    tags = ["runpod/stable-diffusion:fast-stable-diffusion-${TEST}"]
    contexts = {
        scripts = "../../container-template"
        proxy = "../../container-template/proxy"
    }
}
