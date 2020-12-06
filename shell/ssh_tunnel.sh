# Add `GatewayPorts yes` on /etc/ssh/sshd_config and restart ssh with  service ssh restart

#/etc/systemd/system/avalanche_ssh_tunnel.service

#[Unit]
#Description=AvalancheGo Tunnel systemd service.
#StartLimitIntervalSec=0
#[Service]
#Type=simple
#User=ubuntu
#ExecStart=/usr/bin/ssh -N -R 9651:localhost:9651 user@IP
#Restart=always
#RestartSec=1
#[Install]
#WantedBy=multi-user.target

# sudo systemctl enable avalanche_ssh_tunnel.service
# sudo systemctl daemon-reload
# sudo systemctl start avalanche_ssh_tunnel.service


ssh -N -R 9651:localhost:9651 user@IP