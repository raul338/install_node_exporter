# install_node_exporter
Simple script to install `node_exporter` in a vps to `/srv/node_exporter` and activate it using `supervisor`

To edit path or node_exporter version, update files accordingly

```sh
sudo apt update
sudo apt install supervisor

# To run it online
sudo wget -qO /etc/supervisor/conf.d/node_exporter.conf https://raw.githubusercontent.com/raul338/install_node_exporter/master/node_exporter.conf
sudo supervisorctl update
sudo wget -qO- https://raw.githubusercontent.com/raul338/install_node_exporter/master/install_node_exporter.sh | sudo bash

# If you cloned/downloaded this repo:
sudo cp node_exporter.conf /etc/supervisor/conf.d
sudo supervisorctl update
sudo ./install_node_exporter.sh
```
