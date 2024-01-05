#prune script for "docker prune all" writed by Felipe Vargas#
#!/bin/bash
docker="/usr/bin/docker"
varlibdocker=$(df -h /var/lib/docker | awk 'NR==2{print $5,$6}')
"$docker" system prune -f -a
echo "the currently space for /var/lib/docker directory is: $varlibdocker"})
