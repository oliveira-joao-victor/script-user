#!/bin/bash
echo "Gerando diretórios..."

mkdir /publico
mkdir /dep_adm
mkdir /dep_prod
mkdir /dep_mkt


echo "Gerando grupo de usuários..."

groupadd GRP_ADM
groupadd GRP_PROD
groupadd GRP_MKT


echo "Gerando usuários..."

useradd usuario1 -m -s /bin/bash -G GRP_ADM
passwd usuario1

useradd usuario2 -m -s /bin/bash -G GRP_ADM
passwd usuario2

useradd usuario3 -m -s /bin/bash -G GRP_PROD
passwd usuario3

useradd usuario4 -m -s /bin/bash -G GRP_PROD
passwd usuario4

useradd usuario5 -m -s /bin/bash -G GRP_MKT
passwd usuario5

useradd usuario6 -m -s /bin/bash -G GRP_MKT
passwd usuario6


echo "Declarando as permissões dos diretórios..."

chown root:GRP_ADM /dep_adm
chown root:GRP_PROD /dep_prod
chown root:GRP_MKT /dep_mkt

chmod 777 /publico
chmod 770 /dep_adm
chmod 770 /dep_prod
chmod 770 /dep_mkt