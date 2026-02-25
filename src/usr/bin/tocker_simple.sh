#!/bin/sh

echo "A iniciar o orquestrador do poste inteligente..."

# O Loop de Espera (Não apague isto!)
echo "A aguardar o daemon do Docker acordar..."
while ! docker info > /dev/null 2>&1; do
    echo "Docker ainda não responde. A tentar novamente em 3 segundos..."
    sleep 3
done
echo "Docker pronto e a ouvir!"

# 1. Copia a pasta do compose para a área de escrita do Ubuntu Core ($SNAP_DATA)
mkdir -p $SNAP_DATA/compose
cp -r $SNAP/compose/* $SNAP_DATA/compose/

# 2. Entra na pasta de trabalho persistente
cd $SNAP_DATA/compose

# 3. Levanta a stack de sensores em segundo plano
echo "A levantar containers dos sensores..."
$SNAP/usr/bin/docker-compose up -d

echo "Autocomissionamento do poste inteligente concluído com sucesso!"