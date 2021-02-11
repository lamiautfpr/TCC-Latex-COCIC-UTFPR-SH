# TCC-Latex-COCIC-UTFPR-SH
Modelo no padrão Latex de Trabalho de Conclusão de Curso fornecido pelo LAMIA para o curso de Ciência da Computação da UTFPR campus Santa Helena


<h1 align="center">
  <br>
  <a href="https://www.lamia.sh.utfpr.edu.br/">
    <img src="https://user-images.githubusercontent.com/26206052/86039037-3dfa0b80-ba18-11ea-9ab3-7e0696b505af.png" alt="LAMIA - Laboratório de                  Aprendizagem de Máquina e Imagens Aplicados à Indústria" width="400"></a>
<br> <br>
Principais Configurações na Integração de Visão Computacional e Aprendizagem Profunda: Algoritmos e Técnicas
</h1>

<p align="center">  
<b>Grupo</b>: <a href="https://www.lamia.sh.utfpr.edu.br/" target="_blank">LAMIA - Laboratório de Aprendizado de Máquina e Imagens Aplicados à Indústria </a> <br>
<b>Email</b>: <a href="mailto:lamia-sh@utfpr.edu.br" target="_blank">lamia-sh@utfpr.edu.br</a> <br>
<b>Organização</b>: <a href="http://portal.utfpr.edu.br" target="_blank">Universidade Tecnológica Federal do Paraná</a> <a href="http://www.utfpr.edu.br/campus/santahelena" target="_blank"> - Campus Santa Helena</a> <br>
</p>

<p align="center">
<br>
Status do Projeto: Em desenvolvimento :warning:
</p>
___

## Resumo
Os scritps implementam vários modelos do estado da arte da aprendizagem profunda. Dentre eles estão AlexNet, ResNet-34 e MobileNet. Os modelos não se limitam as redes CNNs, assim este repositório contem implementações de Máquinas de Boltzmann e Autocodificadoras. Além dos modelos implementados, os scripts fornecem um protocolo de experimentos que possibilita a visualiação de métricas de avaliação, a criação e restauração de estados dos experimentos. Todo o protocolo de experimentos é configurado no arquivo .json. Os modelos foram contruídos em Tensorflow. Os testes realizados são feitos nas bases CIFAR-10 e MNIST.

Os códigos desenvolvidos fazem parte da [monografia](https://www.lamia.sh.utfpr.edu.br/work/1): Principais Configurações na Integração de Visão Computacional e Aprendizagem Profunda: Algoritmos e Técnicas. Monografia defendida na UTFPR

## Objetivos
O objetivo geral deste projeto é fornecer modelos de apredizagem profunda construídos em Tensorflow para tarefas de visão computacional, que facilitem o desenvolvimento de aplicações de propósito geral, em especial a aplicações de visão computacional.
Dentre alguns dos objetivos específicos do projeto estão.
  - Implementar um protocolo de experimento para realização de testes com modelos construídos
  - Visualizar principais métricas de avalição por meio de gráficos e tabelas
  - Criar um módulo para salvar os estados do experimentos
  
## Estrutura dos scripts
<table>
  <tr>
    <td>arquivo </td>
    <td>Descrição </td>
  </tr>

  <tr>
    <td>checkpoints.py</td>
    <td>Módulo responsável por salvar pesos e os históricos das métricas do modelo em execução. WeightsCheckpoint e HistoryCheckpoint são classes que extendem a classe keras.callbacks.Callback. Os pesos e históricos são salvos a cada 100 épocas. Esta configuração pode ser alterada diretamente no módulo checkpoints.</td>
  </tr>

  <tr>
    <td>dataset.py</td>
    <td>Possui uma única classe: DatasetFacotry. Esta classe é responsável por gerenciar as bases de dados disponíveis, além de restaurar os indexs da base de dados anterior, afim de dá continuaidade ao experimento interrompido.</td>
  </tr>

  <tr>
    <td>experiment.py</td>
    <td>Constrói o experimento definido no arquivo experiment.json. Assim, define um novo estado ou recarrega um já existente, se o experimento não foi finalizado. O diretório dos estados do experimento são definidos no arquivo json. Este módulo possui apenas uma classe: Experiment. Após contruir ou recarregar o estado, a classe Experiment inicia o experimento.</td>
  </tr>

  <tr>
    <td>experiment.json</td>
    <td>Arquivo Json: chave-valor.  Aqui é definido modelos, otimizadores, protocolos e outras chaves que caracterizam o experimento. Veja a seção "o arquivo Json" para mais informações das possiveis chaves e seus respectivos valores.</td>
  </tr>

  <tr>
    <td>main.py</td>
    <td>Módulo que executa a aplicação</td>
  </tr>

  <tr>
    <td>metrics.py</td>
    <td>Neste módulo está definido as métricas de avaliação disponíveis. Aqui também pode ser implementadas novas métricas</td>
  </tr>

  <tr>
    <td>models.py </td>
    <td>Módulo com implementação dos modelos e classes de suporte. Veja a seção "Modelos" para consultar todos os algoritmos disponíveis.</td>
  </tr>

  <tr>
    <td>optmizers.py</td>
    <td>Neste módulo está definido os otimizadores. Os otimizadores são os mesmo que estão disponíveis pelo Keras. Este módulo serve apenas como um adaptador.</td>
  </tr>

  <tr>
    <td>save.py</td>
    <td>Módulo auxiliar para salvar históricos, modelos, resultados e estados.</td>
  </tr>

  <tr>
    <td>state.py</td>
    <td>Módulo responsável pelo gerenciamento dos estados do experimento. Um estado é caracterizado por: id do experimento; número de épocas; protocolo de validação e o camhinho onde serão salvos os estados. O protocolo de validação é definido por métodos de validação de modelos preditivos. Dois método foram implementados K-fold e Hold-out. Cada método possui seu próprio estado e este estado é salvo no estado geral do experimento.</td>
  </tr>

  <tr>
    <td>utils.py</td>
    <td>Módulo com diversas classes e funções para diversos fins. Neste móudulo é encontrado classes para plotar gráficos e funções que auxiliam na construção de modelos</td>
  </tr>

  <tr>
    <td>validation.py</td>
    <td>Os métodos de validação são definidos neste módulo como classes. Os métodos disponíveis são métodos de validação cruzada: K-fold e Hold-out.</td>
  </tr>

 </table>

## O arquivo Json
O código abaixo é um exemplo de configuração de experimento. O exemplos ilustra todos as chaves possíveis e com alguns de seus valores.
```json
{
    "models": [
        "alexnet"
    ],
    "dataset": "mnist",
    "processing": {
        "flat": false,
        "concat": true,
        "expand": false,
        "normalize": false
    },
    "optimizer": "sgd",
    "opt_params": {
        "learning_rate": 0.01,
        "momentum": 0.9,
        "decay": 0.0001
    },
    "loss": "categorical_crossentropy",
    "metrics": [
        "categorical_accuracy",
        "Precision",
        "Recall",
        "AUC",
        "f1_score"
    ],
    "initializers": false,
    "epochs": 400,
    "batch": 256,
    "data_augmentation": false,
    "decay": true,
    "dir": "/content/drive/My Drive/TCC/",
    "exp":{
        "holdout": [10]
    }
}
```

As chaves e valores são mostrados a seguir:

<table>
  <tr>
    <td>chave</td>
    <td>valor</td>
    <td>tipo</td>
  </tr>

  <tr>
    <td>model</td>
    <td>alexnet, resnet, moiblenet, autoencoder, bm</td>
    <td>vetor de string</td>
  </tr>

  <tr>
    <td>dataset</td>
    <td>cifar10, mnist</td>
    <td>string</td>
  </tr>

  <tr>
    <td>processing</td>
    <td>dicionário com as chaves flat, concat, expand e normalize</td>
    <td>dicionário com valores booleanos</td>
  </tr>

  <tr>
    <td>optimizer</td>
    <td>sgd, adam</td>
    <td>string</td>
  </tr>

  <tr>
    <td>opt_params</td>
    <td>dicionário com as chaves learning_rate, momento, decay</td>
    <td>dicionário com valores decimais</td>
  </tr>

  <tr>
    <td>loss</td>
    <td>categorical_crossentropy</td>
    <td>string</td>
  </tr>

  <tr>
    <td>metrics</td>
    <td>categorical_accuracy, Precision, Recall, AUC, f1_score</td>
    <td>vetor de strings</td>
  </tr>

  <tr>
    <td>initializers</td>
    <td>true ou false</td>
    <td>boolean</td>
  </tr>

  <tr>
    <td>epochs</td>
    <td>qualquer valor inteiro</td>
    <td>inteiro</td>
  </tr>

  <tr>
    <td>batch</td>
    <td>qualquer valor inteiro</td>
    <td>inteiro</td>
  </tr>

  <tr>
    <td>data_augmentation</td>
    <td>true ou false</td>
    <td>boolean</td>
  </tr>

  <tr>
    <td>decay</td>
    <td>true ou false</td>
    <td>boolean</td>
  </tr>

  <tr>
    <td>dir</td>
    <td>path para salvar o experimento</td>
    <td>string</td>
  </tr>

  <tr>
    <td>exp</td>
    <td>dicionário com o método de validação, holdout ou kfold</td>
    <td>dicionário, valores como vetores de inteiros</td>
  </tr>
</table>

## Como Utilizar
Para clonar e rodar está aplicação será necessário o [Git](https://git-scm.com) e o [Python3](https://www.python.org/downloads/) (python 3.6 ou superior) instalados em sua máquina. A partir da linha de comando descrita abaixo será possível clonar este repositório.

```bash
# Clone this repository
$ git clone https://github.com/lamiautfpr/TCC-01-2019-PRINCIPAIS-CONFIGURACOES-NA-INTEGRACAO-DE-VISAO-COMPUTACIONAL-E-DEEP-LEARNING-ALGORITMOS.git

# Go into the repository
$ cd TCC-01-2019-PRINCIPAIS-CONFIGURACOES-NA-INTEGRACAO-DE-VISAO-COMPUTACIONAL-E-DEEP-LEARNING-ALGORITMOS
```
Note: If you're using Linux Bash for Windows, [see this guide](https://www.howtogeek.com/261575/how-to-run-graphical-linux-desktop-applications-from-windows-10s-bash-shell/) or use the command prompt from your IDE.

Agora que você já está com o repositório clonado será necessário criar um virtual environment para armazenamento das bibliotecas presentes no requeriments. No diretório do projeto utilize as linhas de comando abaixo:

```bash
# Create virtualenv
$ virtualenv venv

# Execute virtual env
$ source venv/bin/activate
```

Note: Este passo pode ser ignorado caso não possua uma ambiente virtual. Ambientes virtuais são recomendados para a execução de aplicações em python.

Com o virtual enviroment criado, será necessário baixar as bibliotecas presentes no requeriments.txt. Para isso basta utilizar o pip3 para fazer a instalação recursiva de todas as bibliotecas presentes no arquivo de texto. Certifique-se que o shell está no diretório do requeriments. Recomenda-se a utilização da execução em super usuário utilizando sudo.

```bash
# Install all requeriments
$ sudo pip3 install -r requeriments.txt
```
Com a criação do ambiente finalizada, configure o arquivo experiment.json com os dados do experimento que queira executar (veja a seja sobre o arquivo json para cada campo). Após a configuração do experimento utilize o comando a baixo:

```bash
$ python src/main.py src/config/experiment.json
```

O comando descrito acima construirá todos o modelos e executará os testes com o protocolo de experimento escolhido. É recomendado que os modelos implementados sejam executados sobre GPU ou TPU, dada a complexidade computacional exigida por algoritmos baseados em aprendizagem profunda. O [Google Colaboratory](https://colab.research.google.com/) pode ser utilizado para realização de testes em aceleradores gráficos. Também recomendamos a replicação dos resultados da monografia, afim verificar se todas as cofiguraçoes foram feitas corretamente. Para isso, copie o protocolo descrito na monografia de referência.

As bibliotecas utilizadas no projeto estão presentes no arquivo requeriments.txt.

```bash
google-auth==1.18.0
google-auth-oauthlib==0.4.1
google-pasta==0.2.0
Keras-Preprocessing==1.1.2
matplotlib==3.3.0
numpy==1.19.0
pandas==1.0.5
Pillow==7.1.2
scikit-learn==0.23.1
scipy==1.4.1
seaborn==0.10.1
sklearn==0.0
tensorboard==2.2.2
tensorboard-plugin-wit==1.7.0
tensorflow-cpu==2.2.0
tensorflow-estimator==2.2.0
```

## Considerações na instalação do Tensorflow

O método mais simples de instalação do Tensorflow é utilizando o pacote pip disponível no repositório oficial do python. Entretanto, pode apresentar erros se a máquina alvo não suportar as configurações do pacote construído pela Google. Um erro recente é o suporte ao AVX (Advanced Vector Extensions) da CPU, visto que processadores antigos não possuem esta flag. O erro é mostrado abaixo:

```bash
Illegal instruction (core dumped)
```


Para verificar se a máquina alvo possui a flag AVX utilize:

```bash
more /proc/cpuinfo | grep flags
```

Existem algumas formas de contornar este problema. A primeira dela é compilação do Tensorflow na própria máquina. Com a compilação na máquina alvo é possivel otimizar o Tensorflow com as flags disponíveis na própria CPU. O site oficial do [Tensorflow](https://www.tensorflow.org/install/source) mostra os passos para a compilação personlizada. outros sites podem auxiliar na compilação, veja <https://tech.amikelive.com/node-882/how-to-build-and-install-the-latest-tensorflow-without-cuda-gpu-and-with-optimized-cpu-performance-on-ubuntu/>
e <https://tech.amikelive.com/node-887/how-to-resolve-error-illegal-instruction-core-dumped-when-running-import-tensorflow-in-a-python-program/>. Este método é dispendioso e dependedo da máquina pode levar dias para o término.

A segunda forma é a utilização do Tensorflow já compilado sem AVX pelo site [BountySource](https://www.bountysource.com/teams/tensorflow-community-wheels/issues?tracker_ids=54259063). Este site possui um repositório de wheels do Tensorflow mantidas por usuários. Lá é possivel o download de pacotes sem AVX. Para instalar pacotes no pip que não estão no repositório oficial utilize o comando:

```bash
pip install <caminho do arquivo.whl>
```

## Modelos

A aplicação usa os seguintes algoritmos:

* [AlexNet](https://dl.acm.org/doi/10.1145/3065386) - Rede convolucional com 8 camadas pioneira no uso de GPU para o seu treinamento
* [ResNet](https://arxiv.org/abs/1512.03385) - Rede convolucional com o uso de blocos residuais. Rede super profunda.
* [MobileNet](https://arxiv.org/abs/1704.04861) - Rede Convolucional com para dispositivos móveis ou com restrições computacionais.
* [Autoencoder para redução de dimensionalidade](http://www.mitpressjournals.org/doi/10.1162/neco.2006.18.7.1527) - Rede Autoencoder especializada em reduzir a dimensionalidade dos dados.
* [Autoencoder de filtragem de ruído](https://dl.acm.org/doi/10.1145/1390156.1390294) - Rede Autoencoder especializada em filtrar ruídos do dados.

<!--
## Citação

Se você utliza e quer citar o projeto em sua pesquisa, por favor utilize o formato de citação abaixo:
    
    @inproceedings{LAMIA_ic02,
      title={Painel Inteligente de Dados Covid-19},
      author={Naves, T. F.; BEUREN, A. T.; BRILHADOR, A.},
      journal={IEEE Conference on Big Data},
      year={2020}
    }
-->
