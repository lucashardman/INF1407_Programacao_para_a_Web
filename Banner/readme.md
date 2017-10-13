# Primeiro Trabalho

### Enunciado

Implemente uma calculadora que realize as 4 operações. Se preferir, baseie-se no seguinte modelo HTML para facilitar a vida.
A calculadora deve funcionar como uma calculadora básica de 4 operações sem precedêncida (se não tiver onde se basear, use a
do Windows no modo "Padrão" ou "Standard").

```JSP
<form action="index.jsp" method="get">
<input type='text' name='op1'/><br/>
<p>
<input type='submit' name='operacao' value='+'/>
<input type='submit' name='operacao' value='-'/><br/>
<input type='submit' name='operacao' value='*'/>
<input type='submit' name='operacao' value='/'/><br/>
<input type='submit' name='operacao' value='='/>
<p/>
</form>
```

### Solução

O uso de variaveis globais, session ou application iria fazer com que as operações feitas em uma janela/aba interferissem no 
resultado das outras janelas/abas que estivessem utilizando a calculadora. Portanto a solução foi utilizar campos "hidden" para 
guardar as informações. Um para guardar valores auxiliares e outro para guardar a operação que será efetuada.

```JSP
<input type='text' name='operacao' value='<%=request.getAttribute("OpType")%>' hidden/>
<input type='text' name='auxiliar' value='<%=request.getAttribute("TextValue")%>' hidden/>
```

Para alterar esses "input hidden" utilizamos request.getAttribute(ATRIBUTO) para "buscar" valores no servlet e request.setAttribute(ATRIBUTO, VALOR) 
para "enviar" valores para os campos. Para isso é importante que o código Java seja escrito ANTES do formulário HTML.  

Obs: Não foi implementado controle de erros, pois não pedido no enunciado. Por exemplo, divisão por zero, input de caracteres
invalidos...
