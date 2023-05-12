#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GP_ADM
groupadd GP_VEN
groupadd GP_SEC

echo "Criando usuários no sistema..."

useradd carlos	    -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd carlos	   -e  -G GP_ADM
useradd maria	      -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd maria	     -e  -G GP_ADM
useradd joao_	      -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd joao_	     -e  -G GP_ADM

useradd debora	    -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd debora	   -e  -G GP_VEN
useradd carol       -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd sebastiana -e  -G GP_VEN
useradd roberta	    -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd roberto	   -e  -G GP_VEN

useradd victor      -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd josefina   -e  -G GP_SEC
useradd junior      -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd amanda     -e  -G GP_SEC
useradd joaquim     -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd rogerio    -e  -G GP_SEC

echo "Adicionando permissões aos diretórios ..."

chown root:GP_ADM /adm
chown root:GP_VEN /ven
chown root:GP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado"
