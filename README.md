# Trabalho de Programação Paralela e Concorrente I
Grupo:
- Carlos Gabriel
- Isaque Almeida
- Luís Fernando

Foi utilizado a seguinte lib para ler o arquivo CSV: https://github.com/vincentlaucsb/csv-parser

Para compilar rode:
`g++ trab.cpp -o trab -O5 -fopenmp -lpthread -std=c++17`

Para compilar com o Visual Studio, use as flags: `/openmp:experimental /openmp:llvm `

Para rodar o programa, use:
`./trab ./path/to/dataset.csv`

O arquivo `setup_lib.sh` baixa e separa o arquivo necessário da lib de csv usada para o trabalho.

Compatível com GCC 7.5+, compile com no mínimo o C++17.
Compatível com o MSVC 16.3+.

Testado com o dataset de ~3GB em uma maquina (i5 6600K 4.6Ghz, 16GB RAM, SSD R:530Mb/s W:500Mb/s, Fedora 36, Linux 5.17.5) média de 3 minutos.
