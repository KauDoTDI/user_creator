#!/bin/bash

cd /

cd /home

echo "Criando diretórios....!"

mkdir /publico

mkdir /adm

mkdir /ven

mkdir /sec

echo "Todos os diretórios foram criados com sucesso!!"

echo "Criando grupos....!"

groupadd GRP_ADM

groupadd GRP_VEN

groupadd GRP_SEC

echo "Todos os grupos foram criados com sucesso!!"

echo "Criando usuários....!"

useradd carlos -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM

useradd maria -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM

useradd joao_ -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN

useradd sebastiana -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN

useradd roberto -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC

useradd amanda -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC

useradd rogerio -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC

echo "Todos os usuários foram criados com sucesso, senha de acesso:Senha123 "

echo "Manuseando permissões....!"

chmod 777 /publico/

chmod 770 /adm/

chmod 770 /ven/

chmod 770 /sec/

chown root:GRP_ADM /adm/

chown root:GRP_VEN /ven/

chown root:GRP_SEC /sec/

echo "Todas as permissões foram concedidas com sucesso!!"

echo "Processo finalizado!!"