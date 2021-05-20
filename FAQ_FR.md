<h1> Délégation jetons Casper / FAQ sur le staking </h1>

Il s'agit d'une collection de questions/réponses fournies par la communauté aux questions fréquemment posées sur le processus de délégation / staking du réseau Casper. 

Vous pouvez trouver la documentation officielle ici: https://docs.casperlabs.io/en/latest/staking/index.html

Si vous voyez quelque chose d'incorrect ou quelque chose qui manque, n'hésitez pas à créer une pull request pour contribuer.

<h2>Qu'est-ce que la délégation/staking? </h2>

La délégation attribue vos jetons CSPR à un validateur choisi sur le réseau qui participe au protocole de consensus du réseau Casper. Comme preuve de réseau d'enjeu,  les opérateurs de nœuds  mettent  leurs jetons pour gagner  l'éligibilité de proposer de nouveaux blocs pour le réseau, mais nécessitant une disponibilité et une surveillance  constantes d'un serveur connecté au réseau Casper, au lieu de  <<miner>> comme les autres jetons.

Au lieu d'avoir à exploiter et à maintenir un nœud casper (serveur qui stocke une copie de la blockchain), vous pouvez à la place déléguer vos jetons à quelqu'un sur le réseau qui 
a indiqué son intention d'exploiter un serveur sur le réseau. Ces opérateurs de serveur sont appelés validateurs et conservent un certain pourcentage de récompenses générées à partir de vos jetons jalonnés, similaire à une commission. Les validateurs fixent leurs propres frais et gagnent des récompenses pour leurs propres jetons jalonnés. En participant au protocole de cette manière, vous contribuez à améliorer la décentralisation et la sécurité du réseau, et gagnez des récompenses en retour.

À quelle fréquence les récompenses de jalonnement sont-elles payées?
Les récompenses de Staking sont versées sur votre compte sur une base ERA. One Era est actuellement défini sur 2 heures et chaque bloc est défini sur 65 secondes.

<h2>Y a-t-il une période de gel ( cool-down) / verrouillage après la délégation?</h2>

Bien qu'il y ait un délai avant que vous puissiez accéder à vos jetons précédemment délégués, il n'y a pas de période de gel ou de verrouillage après la délégation  de jetons. Vous pouvez annuler la délégation de n'importe quel nombre de jetons à tout moment. Lors de la non-délégation (undelegate) des jetons d'un validateur, le réseau met les fonds en 
 attente pendant 7 époques, environ 14 heures, puis renvoie automatiquement les jetons CSPR sur votre compte.
 
 <h2> Y a-t-il du slashing? Puis-je perdre mes jetons délégués?</h2>
 
 
Actuellement, le slashing n'est pas activée sur Casper MainNet. Si un validateur se comporte mal sur le réseau, il peut être expulsé de l'enchère et vos récompenses seront perdues pendant la période pendant laquelle le validateur est expulsé. Lorsque le slashing sera activée, les jetons seront supprimés en cas de mauvais comportement du réseau. Dans ce cas, vous perdrez les récompenses qui seraient gagnées au cours de cette période.

  <h2> Quel est le coût de la délégation et de la non-délégation (undelegate)? </h2>


Le coût du processus de délégation est d'environ 3 CSPR. Assurez-vous donc d'avoir un tas de CSPR supplémentaires sur votre compte en dehors du montant que vous déléguez. Donc, si vous allez déléguer 1000 CSPR, vous devriez avoir au moins 1003 CSPR dans votre portefeuille.Le coût du processus non délégué est actuellement de 0,00001 CSPR.

 <h2> Quel est le taux de récompense annuel des jetons délégués? </h2>

APY est actuellement d'environ 20% sur le réseau principal. Cette valeur est le résultat d'un calcul approximatif effectué le 2021-05-16 et peut changer avec le temps.

<h2> Comment puis-je déléguer mes jetons? </h2>

Actuellement, vous devez utiliser la ligne de commande pour le staking / délégation jusqu'à ce que l'interface utilisateur conviviale soit publiée.
 Si vous connaissez la ligne de commande, rendez-vous ici: https://github.com/mabahma/CasperDelegate/blob/main/README.md
