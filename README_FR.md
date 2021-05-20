Casper Delegate Scripts - la manière de la ligne de commande
Ces scripts sont écrits pour aider les détenteurs de jetons CSPR à déléguer facilement leurs jetons aux validateurs sur le réseau principal Casper
 jusqu'à ce qu'une solution d'interface utilisateur complète arrive.
  

Vous avez des questions sur la délégation / le jalonnement Casper?
Voir la FAQ sur la délégation / le jalonnement de Casper.

Conditions préalables:

Afin de déléguer vos jetons, vous devez avoir créé un portefeuille pour vous-même et transféré vos jetons de l'ecxhange vers votre portefeuille. 
Si vous n'avez pas de portefeuille, vous pouvez en créer un en suivant ces étapes:

Installez le navigateur Brave (recommandé) ou Chrome.

Courageux: https://brave.com/
Chrome: https://www.google.com/intl/en/chrome/

Accédez à la page de connexion de Casper Explorer: https://cspr.live/sign-in

Cliquez sur le bouton "Télécharger le signataire" et attendez que la page d'extension "CasperLabs Signer" s'ouvre.

Cliquez sur le bouton "Ajouter à Chrome" et installez l'extension officielle (nous l'appellerons "Casper Signer". C'est votre portefeuille.)

Cliquez sur le bouton "Extensions" (icône en forme de pièce de puzzle) en haut à droite et sélectionnez CasperLabs Signer

Définissez le mot de passe du coffre-fort et créez un compte (assurez-vous que la case Télécharger la clé est cochée)

Enregistrez votre clé à un emplacement approprié. Ceci est votre clé de compte. Celui qui possède cette clé est propriétaire du compte. Faites-en donc plusieurs copies (copiez-la sur une clé USB propre, imprimez-la sur papier, etc.) et stockez-les en toute sécurité. Ne le partagez jamais avec personne.

Maintenant, allez sur https://cspr.live/sign-in et cliquez sur le bouton Se connecter sous la section Casper Signer, et connectez-vous à l'explorateur Casper avec votre compte. (Il s'agit de l'explorateur officiel. Il peut vous demander la permission d'afficher l'adresse de votre compte. Approuvez et connectez-vous.)

Une fois connecté, vous verrez votre numéro de compte en haut à droite. (À côté de l'indicateur de langue.) Cliquez sur l'adresse de votre compte, puis sur Afficher le compte.

Les détails de votre compte sont affichés ici. S'il s'agit d'un nouveau compte (vide), vous verrez NA dans le champ Solde du compte.

La clé publique affichée ici est votre numéro de compte. Vous pouvez l'utiliser pour transférer des fonds sur votre compte à partir des échanges.

Remarques:

Essayez toujours d'abord le transfert et la délégation avec un petit montant et assurez-vous que tout fonctionne comme prévu.
Parfois, cspr.live ou le navigateur courageux peuvent ne pas mettre à jour correctement la page des détails du compte. 
Donc, si vous effectuez un transfert et que vous ne pouvez pas voir le solde du compte après une longue période, essayez de fermer complètement l'onglet du navigateur, de le rouvrir et de vous reconnecter.



Installation
Accédez à un environnement Ubuntu 20.04 (avec au moins 2 Go de RAM pour un minimum, au moins 3 Go de RAM pour les installations de bureau) en tant que root.
 Si vous n'y avez pas encore accès, vous pouvez essayer l'une des méthodes suivantes:
Vous pouvez le faire en lançant un nœud sur Digital Ocean (lien de référence pour les crédits gratuits pour les nouvelles inscriptions: https://m.do.co/c/0b83fa02ff5a), 

et en y accédant via ssh (depuis le terminal MacOS ou depuis le terminal Windows) )
Remarques sur l'utilisation d'une VM / VPS cloud: si possible, optez pour un VPS décent avec un taux horaire. 
Vous pouvez rapidement terminer votre travail, puis détruire le VPS. Une fois que vous avez terminé avec la délégation, 

si vous avez l'intention de la garder déléguée pendant une longue période, vous n'avez plus besoin du VPS. Votre enregistrement de délégation est conservé sur le réseau, pas sur votre VPS. Assurez-vous simplement d'avoir préalablement sauvegardé votre portefeuille / clé privée en toute sécurité!
Installez VirtualBox ou une autre solution VM sur votre PC et installez Ubuntu 20.04 dedans

Activez le sous-système Windows pour Linux 2 et installez Ubuntu 20.04 à partir du magasin
Copiez votre fichier de compte dans votre répertoire personnel (/ root) sur Ubuntu avec le nom privkey.pem

Installez git et curl: apt install -y git curl
Clonez ce référentiel: git clone https://github.com/TestNetRun/CasperDelegate.git
Déplacez-vous dedans: cd CasperDelegate
Installez les packages et créez les contrats intelligents (smart contrats): ./setup.sh


Délégation
Approvisionnez votre compte et vérifiez son solde avec ./balance.sh ACCOUNT-ADDRESS

Assurez-vous que vous disposez d'un nombre suffisant de CSPR. Vous aurez besoin d'au moins 3 CSPR supplémentaires qui seront le coût de la procédure de délégation.

Trouvez-vous un validateur et notez sa clé publique (Vous êtes invité à déléguer sur notre  : 01c6d11a0fa563f8cc3ed5e967d5901c80004bdcde6250ddea18af2b4eae0a902d)

Assurez-vous que le validateur que vous choisissez a un taux de commission acceptable et est capable de maintenir une disponibilité élevée.

N'hésitez pas à rejoindre notre groupe de télégrammes si vous déléguez sur notre nœud de validation, pour être mis à jour sur les changements importants: https://t.me/CasperDelegation

Sinon, vous pouvez poser des questions générales sur le serveur Discord officiel de Casper: https://discord.com/invite/Q38s3Vh

Liste des validateurs actuels: https://cspr.live/validators

Démarrez le script de délégation et suivez les instructions: ./delegate.sh

Prenez note du hachage du déploiement. Si tout se passe bien, vous pouvez voir le résultat de votre délégation en quelques minutes en copiant-collant votre hachage de déploiement sur cspr.live.

