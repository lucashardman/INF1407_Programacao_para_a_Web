# INF1407 - Programacao para a Web

### Configuração dos ambiente de desenvolvimento

* Instalar Java JRE
* Instalar Apache Tomcat
* Instalar Eclipse EE

* Extrair apache-tomcat-x.x.x.zip 
* Verifique se tem algum jre selecionado e se o Type dele está Standard VM

  Eclipse EE > Window > Preferences > Java > Installed JREs

* Se não tiver, adicione

  Add > Standard VM > Directory...    
  Selecione a pasta do jre    
  Clique finish.

* Selecionar o servidor Apache Tomcat

  Eclipse EE > Window > Preferences > Server > Runtime Environments > Add... > Apache Tomcat vx.x > Next > Browse...    
  Selecione o apache-tomcat-x.x.x.zip   
  JRE > jrex.x.x > Finish > Apply and Close

### Criando o Projeto

* File > New > Other > Wizards:   
* Escreva web   
* Dynamic Web Project > Next > Project Name   
* De um nome ao projeto   
* Next > Next > Genereate web.xml deployment descriptor

### Entregando Prova
* Clique com botão direito no projeto  
* Export > Export...  
* Escreva 'WAR' na busca  
* WAR file > Next > Export source files > Finish  
* Marcar 'Overwrite existing file'.  
* Como você não pode mandar por e-mail formatos .war, clique no nome do arquivo e altere de xxx.war para xxx.zip.


  Observação: Caso você não consiga ver a extensão dos arquivos no windows, faça o seguinte
Windows explorer > (se o menu superior não estiver aparecendo) Alt > Ferramentas > Opções de Pasta > Modo de exibição >
Dentro de configurações avançadas desmarque 'Ocultar as extensões dos tipos de arquivo conhecidos'
