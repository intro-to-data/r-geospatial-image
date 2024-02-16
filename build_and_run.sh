podman build -t \
  localhost/r-geospatial-image:latest .

podman run \
  --detach \
  --env PASSWORD=$LOCAL_PASS \
  --interactive \
  --name r-geospatial-acphs \
  --publish 8787:8787 \
  --replace \
  --tty \
  #--userns keep-id \
  -v /var/home/$USER/Projects/:/root/Projects/ \
  --security-opt label=disable \
  r-geospatial-image

