# Segundo Trabalho

### Enunciado

Faça uma página chamada "banner.jsp" que apresente aleatoriamente um dos quatro banners do arquivo "banner.zip" (diponível no nosso site, em "arquivos para exercícios"). Quando um usuário clicar no banner, ele (o usuário) deve ser direcionado para a página referente ao banner, ou seja, para um dos endereços listados na tabela a seguir. Faça uma página chamada "contabilidade.jsp" que apresente a contabilidade dos clicks realizados nos banners de TODOS os usuários do site.


Nome do Banner | Endereço do site
------------ | -------------
banner-PUC | http://www.puc-rio.br 
banner-DI | http://www.inf.puc-rio.br
banner-Java | http://java.com
banner-DAD | http://dad.puc-rio.br

### Solução

O "banner.jsp" chama o bean "BannerNumber.java" (com escopo request) para gerar um número aleatório de 0 a 3 a cada vez que o usuário acessa a página. Ele também chama o bean "CountClicks.java" que possui um contador de cliques para cada banner e inicializa eles com 0, utilizando o escopo application. Cada número gerado está associado a um banner diferente. Desta forma, utilizando as tags condicionais do JSTL, dependendo do número gerado é criado um formulário com um campo hidden contanto o número e um campo com a imagem do banner. Ao clicar no banner, o formulário chama o servlet "PrimeiroServlet.java".

O "PrimeiroServlet.java" vai chamar o bean "CountClicks.java". Como vimos, o servlet recebe como parâmetro o número referente ao banner clicado. Ele utilizará este número para receber o atributo do beans que contém o contador de cliques deste banner, incrementa o contador, passa o novo valor para beans e depois redireciona para a página web da instituição.

O "contabilidade.jsp" chama o bean "CountClicks.java" e utiliza a tag 'out' do JSTL para apresentar o número total de cliques de cada banner.
