<h1 align="center">
  <br>
  <a href="https://www.lamia.sh.utfpr.edu.br/">
    <img src="https://user-images.githubusercontent.com/26206052/86039037-3dfa0b80-ba18-11ea-9ab3-7e0696b505af.png" alt="LAMIA - Laboratório de                  Aprendizagem de Máquina e Imagens Aplicados à Indústria" width="400"></a>
<br> <br>
TCC-Latex-COCIC-UTFPR-SH
</h1>

<p align="center">  
<b>Grupo</b>: <a href="https://www.lamia.sh.utfpr.edu.br/" target="_blank">LAMIA - Laboratório de Aprendizado de Máquina e Imagens Aplicados à Indústria </a> <br>
<b>Email</b>: <a href="mailto:lamia-sh@utfpr.edu.br" target="_blank">lamia-sh@utfpr.edu.br</a> <br>
<b>Organização</b>: <a href="http://portal.utfpr.edu.br" target="_blank">Universidade Tecnológica Federal do Paraná</a> <a href="http://www.utfpr.edu.br/campus/santahelena" target="_blank"> - Campus Santa Helena</a> <br>
</p>

<p align="center">
<br>
Status do Projeto: Concluído:heavy_check_mark:
</p>
___

## Resumo
Este modelo em Latex é uma adaptação do modelo disponibilizado pela [ABNTEX](https://www.abntex.net.br/), de acordo com as Normas da Univerdade Tecnológica Federal do Paraná (UTFPR) - Campus Santa Helena e as normas da ABNT para elaboração de documentos técnicos e científicos brasileiros. Para mais informações do pacotes e classes contidas no modelo, consultar o site https://www.ctan.org/pkg/abntex2.

## Objetivos
O objetivo geral deste projeto é fornecer um modelo em Latex padrão para elaboração de Trabalhos de Conclusão de Curso (TCC) para o curso de Ciência da Computação da UTFPR - Santa Helena.
  
## Modelo
 <img src="https://github.com/lamiautfpr/TCC-Latex-COCIC-UTFPR-SH/blob/master/LAMIA%20-%20TCC%20Latex%20UTFPR-SH/imagens/struct%20of%20papers.svg" width="400"></a>
<br> <br>


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
