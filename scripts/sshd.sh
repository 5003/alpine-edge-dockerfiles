for i in PasswordAuthentication:yes \
         AllowTcpForwarding:no \
         X11Forwarding:no \
         PermitRootLogin:yes \
         UsePrivilegeSeparation:no
  do
    sed -i "/.*${i%%:*}.*/d" /etc/ssh/sshd_config
    echo -e "\n${i%%:*} ${i#*:}" >> /etc/ssh/sshd_config
done