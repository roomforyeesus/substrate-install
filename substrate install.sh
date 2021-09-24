#Node JS latest(v14.17.6) source build

sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install -y pkg-config build-essential curl git cargo
cd /usr/local/src
wget https://nodejs.org/dist/v14.17.6/node-v14.17.6.tar.gz
tar -xvzf node-v14.17.6.tar.gz
ls
cd node-v14.17.6
./configure
make
sudo make install
which node

#npm install naad upgrade
apt install npm -y
npm install -g npm@latest -y

#install yarn
npm install --global yarn


#build dependencies
sudo apt update
# May prompt for location information
sudo apt install -y git clang curl libssl-dev llvm libudev-dev

#substrate script
curl https://getsubstrate.io -sSf | bash -s -- --fast

#clone node template
git clone -b latest --depth 1 https://github.com/substrate-developer-hub/substrate-node-template

#compile
cd substrate-node-template
# NOTE: you should always use the `--release` flag
cargo build --release
# ^^ this will take a while!

# Clone the frontend template from github
git clone -b latest --depth 1 https://github.com/substrate-developer-hub/substrate-front-end-template

# Install the dependencies
cd substrate-front-end-template
yarn install

# Run a temporary node in development mode
./target/release/node-template --dev --tmp

