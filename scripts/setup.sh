: ${PASS:=$(dd if=/dev/urandom bs=1 count=15 | base64)}
  ssh-keygen -b 4096 -f /etc/ssh/ssh_host_rsa_key -N ""
  echo "root:$PASS" | chpasswd
  echo The password for an SSH connection: $PASS
exec "$@"