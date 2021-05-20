cd ~
apt update && apt install git -y && apt install dnsutils -y && apt install jq -y
echo "deb https://repo.casperlabs.io/releases" bionic main | tee -a /etc/apt/sources.list.d/casper.list
curl -O https://repo.casperlabs.io/casper-repo-pubkey.asc
apt-key add casper-repo-pubkey.asc
apt update
apt install casper-client -y
apt purge --auto-remove cmake
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null
apt-add-repository 'deb https://apt.kitware.com/ubuntu/ focal main'
apt update
apt install cmake -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
apt install libssl-dev -y
apt install pkg-config -y
apt install build-essential -y
BRANCH="1.0.20" \
    && git clone --branch ${BRANCH} https://github.com/WebAssembly/wabt.git "wabt-${BRANCH}" \
    && cd "wabt-${BRANCH}" \
    && git submodule update --init \
    && cd - \
    && cmake -S "wabt-${BRANCH}" -B "wabt-${BRANCH}/build" \
    && cmake --build "wabt-${BRANCH}/build" --parallel 8 \
    && sudo cmake --install "wabt-${BRANCH}/build" --prefix /usr --strip -v \
    && rm -rf "wabt-${BRANCH}"

cd ~
git clone git://github.com/CasperLabs/casper-node.git
cd casper-node/

git checkout release-1.0.0
make setup-rs
make build-client-contracts -j

WHITE='\033[0;37m'
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "\n\n----------------------------------------------------------------------------------------\n"

echo -e "${GREEN}Requirements have been installed. You are ready to delegate.\n"

echo -e "* Sauvegardez votre clé privé private key) avec ce nom : privkey.pem dans votre *home directory*: ${RED}privkey.pem${NC}"
echo -e "${GREEN}* Vosu pouvez lancer le processus de délégation avec la commande : ${RED}./delegate${NC}"
echo
echo -e "${GREEN}* Vous pouvez voir votre solde cspr avec cette commande: ${RED}./balance YOUR-ACCOUNT-ADDRESS${NC}"
echo
echo -e "${GREEN}* Note: vosu devz avoir au moins ${RED}3 CSPR${GREEN} dans votre compte en plus du montant que vosu voulez déléguer. C'est le prix du gas
pour déléguer.${NC}"
echo -e "${RED}* ATTENTION: Essayer d'abord la procédure avec de tout petits montants et assurez vous que tout marche avant de la lancer avec de gros montants. Nous déclinons toute responsabilitée en cas de perte des jetons.
${NC}\n"
