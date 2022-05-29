#/bin/bash

ENV_FOLDER="cpp_env"

if ! command -v git &>/dev/null; then
    echo "GIT não encontrado! Instale para prosseguir!"
    exit
fi

function download_header() {
    echo "Criando pastas..."
    mkdir $ENV_FOLDER
    cd $ENV_FOLDER
    echo "Baixando o CSV-PARSER..."
    git clone https://github.com/vincentlaucsb/csv-parser
    echo "Copiando o header do CSV-PARSER..."
    cp ./csv-parser/single_include/csv.hpp ../csv.hpp
    echo "Limpando..."
    cd ..
    rm -rf ./$ENV_FOLDER
    echo "Tudo certo!"
}

if [ -f ./$ENV_FOLDER/csv.hpp ]; then
    echo "O header do CSV-PARSER já existe!\nSaindo..."
    exit
else
    download_header
fi

