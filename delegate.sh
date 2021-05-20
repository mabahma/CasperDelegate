WHITE='\033[0;37m'
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "\n${GREEN}Ce script vous aidera  à déléguer vos jetons CSPR . Merci de lire les  messages attentivement, et assurez vous que vous comprenez ce qui est demandé .${NC}\n"
echo -e "\n${GREEN}Assurez vous que vosu avez sauvegardé votre  fichier de clé privée <<private key file>> dans votre *home directory* avec le nom 'privkey.pem'.${NC}\n"

echo -e "\n${GREEN}Quelle estl'adresse de votre compte : clé publique (public key)? (copier/coller et appuyez sur enter.)${NC}\n"
read DELEGATOR_PUBKEY
echo -e "Saisissez votre adresse: $DELEGATOR_PUBKEY\n"

echo -e "\n${GREEN}Saisissez le montant de  CSPR que vosu voulez delégué sosu foramt d'un nombe enitierr. (pas de décimales. 157 est ok  157.0 and 157.5 pas ok .)${NC}"
read DELEGATE_AMOUNT
MOTES="000000000"
DELEGATE_MOTES="$DELEGATE_AMOUNT$MOTES"

echo -e "\n${GREEN}Saisissez l'adresse (public key) du validateur auquel vous voulez déléguer. (Vous êtes invité à déléguer sur notre node qui propose des frais de 1%: 01c6d11a0fa563f8cc3ed5e967d5901c80004bdcde6250ddea18af2b4eae0a902d)${NC}"
read VALIDATOR_PUBKEY

echo -e "\n${RED} Saisissez   YES  puis enter si toute les informations saisie sont correctes. Sinon , saisissez NO et recommencez à exécuterle script depuis le début.${NC}\n"
echo -e "${GREEN}Clé publique du délégaunt (Vous): $DELEGATOR_PUBKEY ${NC}"
echo -e "${GREEN}Clé publique du validateur: $VALIDATOR_PUBKEY ${NC}"
echo -e "${GREEN}montant à déléguer: $DELEGATE_AMOUNT ${NC}"
echo -e "${GREEN}montant à déléguer en motes: $DELEGATE_MOTES ${NC}"

echo -e "${RED}\nI Confirmez que toutes ces informations sont correctes (saisissez YES ou NO puis appuyez sur enter):${NC}"
read ANSWER

if [[ $ANSWER == "YES" ]]
then
  casper-client put-deploy --chain-name casper --node-address http://185.198.72.171:7777 -k $HOME/privkey.pem --session-path "$HOME/casper-node/target/wasm32-unknown-unknown/release/delegate.wasm" --payment-amount 3000000000  --session-arg "validator:public_key='$VALIDATOR_PUBKEY'" --session-arg="amount:u512='$DELEGATE_MOTES'" --session-arg "delegator:public_key='$DELEGATOR_PUBKEY'"
else
  echo "Merci de ré executer le script avec des informations correctes."
fi
