#prune script for "docker prune all" writed by Felipe Vargas#
#!/bin/bash
docker="/usr/bin/docker"
varlibdocker=$(df -h /var/lib/docker | awk 'NR==2{print $5,$6}')
"$docker" system prune -f -a
echo "el espacio actual del filesystem /var/lib/docker es de: $varlibdocker"})
