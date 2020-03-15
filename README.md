# install_node_exporter
Simple script to install `node_exporter` in a vps to `/srv/node_exporter` and activate it using `supervisor`

To edit path or node_exporter version, update files accordingly

```sh
sudo apt update
sudo apt install supervisor

# If you cloned/downloaded this repo:
sudo cp node_exporter.conf /etc/supervisor/conf.d
sudo ./install_node_exporter.sh
```
