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
Status do Projeto: em andamento:warning:
</p>
___

## Resumo
Este modelo em Latex é uma adaptação do modelo disponibilizado pela [ABNTEX](https://www.abntex.net.br/), de acordo com as Normas da Univerdade Tecnológica Federal do Paraná (UTFPR) - Campus Santa Helena e as normas da ABNT para elaboração de documentos técnicos e científicos brasileiros. Para mais informações dos pacotes e classes contidas no modelo, consultar o site https://www.ctan.org/pkg/abntex2.

## Objetivos
O objetivo geral deste projeto é fornecer um modelo em Latex padrão para elaboração de Trabalhos de Conclusão de Curso (TCC) para o curso de Ciência da Computação da UTFPR - Santa Helena.
  
## Modelo
A estrutura de trabalhos científicos tipicamente possuem 4 partes: Capa e elementos Pré-textuais, Textuais e Pós-Textuais. A figura a baixo ilustra a ordem de cada parte, da esquerda para a direita. Os blocos em cinza são partes opcionais, enquanto os blocos em braco são obrigatórios.
<p align="center">
 <img  src="https://raw.githubusercontent.com/lamiautfpr/TCC-Latex-COCIC-UTFPR-SH/master/LAMIA%20-%20TCC%20Latex%20UTFPR-SH/imagens/struct-of-paper.png" width="600"></a>
</p>

O modelo disponibilizado segue a mesma estrutura ilustrada na figura acima, entretanto com mais arquivos, como por exemplo o arquivo de abreviatura.tex. Abaixo a estrutura de diretórios é mostrada, alguns arquivos e diretórios foram ocultados, a fim de simplificar a apresentação deste documento. A escrita de cada arquivo deve seguir as normas estabeleciadas pela ABNT para trabalhos científicos. Este modelo apenas facilita o processo de desenvolvimento, como margens, criação automático de sumário, enumeração de figuras e tabelas, dentre outras "facilidades".

```bash
elementos-pretextuais
  -abreviaturas.tex
  -abstract.tex
  -agradecimentos.tex
  -dedicatoria.tex
  -epigrafe.tex
  -ficha_catalografica.png
  -folhaAprovação.pdf
  -glossario.tex
  -resumo
  -simbolos.tex
elementos-textuais
  -cap-1-introducao.tex
  -cap-2-refencial.tex
  -cap-3-metodologia.tex
  -cap-4-resultados.tex
elementos-postextuais
  -anexo1.tex
  -referencias.bib
imagens
lamia-tcc-utfpr-sh.cls
main.tex
```

Dois arquivos merecem atenção, main.tex e lamia-tcc-utfpr-sh.cls. O arquivo main.tex é reponsável a adição de pacotes extras (pacotes do usuário), configuração da capa, adição de capítulos, autores e outros. Em outras palavras, é o arquivo configura o modelo. O arquivo lamia-tcc-utfpr-sh.cls gerencia os aspectos de formatação, como por exemplo margens e tamanho da fonte. Este arquivo é o documento de classe que foi adaptado do ABNTEX2.

## Como Utilizar
Para clonar e rodar está aplicação será necessário o [Git](https://git-scm.com) e o uso de algum editor de arquivos latex (recomendamos uso do editor [overleaf](https://www.overleaf.com/)). A partir da linha de comando descrita abaixo será possível clonar este repositório.

```bash
# Clone this repository
$ git clone https://github.com/lamiautfpr/TCC-Latex-COCIC-UTFPR-SH.git

```
Note: If you're using Linux Bash for Windows, [see this guide](https://www.howtogeek.com/261575/how-to-run-graphical-linux-desktop-applications-from-windows-10s-bash-shell/) or use the command prompt from your IDE.

Após o download do modelo, se o arquivo estiver em zip, faça upload na plataforma do overleaf. Outra forma de editar o modelo é [instalar o latex](https://linuxconfig.org/how-to-install-latex-on-ubuntu-20-04-focal-fossa-linux) em sua máquina e instalar algum editor de arquivos, por exemplo [vscode](https://code.visualstudio.com/). Esta documentação não irá abordar esta forma, mas siga os link disponibilizados.

Além de fazer o download do repositório, ajude-nos com a atualização do modelo e da criação da documentação. Para isso, faça o fork do projeto e envie as possíveis alterações para os nossos colaboradores. Para qualquer erro na documentação e no modelo encontrado abra uma issue, que assim que possível corrigiremos.

## Algumas considerações sobre as imagens e figuras no geral

Para o título das imagens, colocar essa função para tirar o negrito e estabelecer o estilo padrão:  
\captionsetup{labelfont=normalfont, textfont=normalfont} 
\caption{Cronograma de execução das atividades.}

Para a fonte da imagem, é importante seguir a configuração abaixo:  
{\textbf{Fonte}: Autoria Própria (2024).}  
Como a fonte já ta em 10pt, basta colocar o "Fonte" em negrito

## Algumas Considerações a Respeito das Referencias

A norma NBR 6030:2018 estipula alguns elementos obrigatórios para cada tipo de referencia bibliografia. Afim de facilitar o desenvolvimento da monografia, a seguir alguns modelos de bibtex para a construção de referencias. São apenas alguns tipos comuns que podem ser encontrados na escrita de uma referência. 

@article{Alias,
	author,
	title,
	journal,
	volume,
	number,
	year,
	urldate,
	url,
	pages
}

@inbook{Alias,
	title,
	author,
	chapter,
	pages,
	booktitle,
	bookauthor,
	year,
	publisher,
	location
}

@book{Alias,
    author,
    title,
    year,
    publisher,
    edition,
    pagetotal,
    location
}

@inproceedings{Alias,
  title,
  author,
  booktitle,
  eventtitle,
  pages,
  number,
  eventyear,
  year,
  location,
  venue,
  publisher,
  url,
  urldate
}

@thesis{Alias, 
    location, 
    title,
    pagetotal,
    url,
    institution, 
    type,
    author, 
    eventyear,
    year,
    urldate,
    month
}
