# install_node_exporter
Simple script to install `node_exporter` in a vps to `/srv/node_exporter` and activate it using `supervisor`

To edit path or node_exporter version, update files accordingly
Check node_exporter.conf, It includes an optional command line wich disables some metrics that I don't use in grafana

```sh
# To run it online
# Ubuntu/debian
sudo apt update && sudo apt install supervisor
sudo curl -Lo /etc/supervisor/conf.d/node_exporter.conf https://raw.githubusercontent.com/raul338/install_node_exporter/master/node_exporter.conf

# Centos/RHEL
sudo yum install supervisor wget
sudo curl -Lo /etc/supervisord.d/node_exporter.conf https://raw.githubusercontent.com/raul338/install_node_exporter/master/node_exporter.conf

sudo supervisorctl update
sudo curl -Lo 0https://raw.githubusercontent.com/raul338/install_node_exporter/master/install_node_exporter.sh | sudo bash

# If you cloned/downloaded this repo:
sudo cp node_exporter.conf /etc/supervisor/conf.d
sudo supervisorctl update
sudo ./install_node_exporter.sh
```
