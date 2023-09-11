sudo systemctl stop desmosd

cd || return
rm -rf desmos
git clone https://github.com/desmos-labs/desmos.git
cd desmos || return
git checkout v6.0.0
make install
desmos version # 6.0.0

sudo systemctl start desmosd
