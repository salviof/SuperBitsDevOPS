ARGUMENTOS_ESPERADOS=1
NOME_PASTA_PROJETO=$1

echo "nome pasta Projeto====$NOME_PASTA_PROJETO"
# Verificando se o o Cliente e o Projeto foram enviados
if [ $# -ne $ARGUMENTOS_ESPERADOS ]
then
  echo "Especifique o nome do cliente, e do projeto $0 ;) "
  exit $E_BADARGS
fi

source /home/git/superBitsDevOps/SCRIPTS_SERVIDOR/VARIAVEIS_SERVIDOR.sh $NOME_PASTA_PROJETO
# Gera as seguintes variaveis:
# $CAMINHO_REPOSITORIO_PROJETO_RELEASE 
# $CAMINHO_REPOSITORIO_PROJETO_SOURCE 
# $CAMINHO_SERVIDOR_REPOSITORIOS_RELEASE
# $CAMINHO_SERVIDOR_REPOSITORIOS_SOURCE




if [ -d "$CAMINHO_REPOSITORIO_PROJETO_RELEASE" ]
then

  rm $CAMINHO_REPOSITORIO_PROJETO_RELEASE -r -f
      
else

   echo "A pasta do repositório não existe, ignorando remoção de repositorio"
   
fi
 
