#!/bin/bash

echo "criação de diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criação de grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criação de usuários GRP_ADM"

useradd carlos -m -s /bin/bash $(openssl passwd -crypt senha) -G GRP_ADM
useradd maria -m -s /bin/bash $(openssl passwd -crypt senha) -G GRP_ADM
useradd joao -m -s /bin/bash $(openssl passwd -crypt senha) -G GRP_ADM

echo "criação de usuários GRP_VEN"

useradd debora -m -s /bin/bash $(openssl passwd -crypt senha) -G GRP_VEN
useradd sebastiana -m -s /bin/bash $(openssl passwd -crypt senha) -G GRP_VEN
useradd roberta -m -s /bin/bash $(openssl passwd -crypt senha) -G GRP_VEN

echo "criação de usuários GRP_SEC"

useradd josefina -m -s /bin/bash $(openssl passwd -crypt senha) -G GRP_SEC
useradd amanda -m -s /bin/bash $(openssl passwd -crypt senha) -G GRP_SEC
useradd rogerio -m -s /bin/bash $(openssl passwd -crypt senha) -G GRP_SEC

echo "alterando permissão dos arquivos"

chown root:GROUP_ADM /adm
chown root:GRP_SEC /sec
chown root:GROUP_VEN /ven

chmod 770/adm
chmod 770/sec
chmod 770/ven