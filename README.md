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

File > New > Other > Wizards:   
Escreva web   
Dynamic Web Project > Next > Project Name   
De um nome ao seu filho   
Next > Next > Genereate web.xml deployment descriptor

