<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/resultadoCss.css"> 
        <title>JSP Page</title>
    </head>
    <body>
        <article id="corpo">
            <header>
                <a href="../index.jsp"><img id="logo" src="../imagens/logo.png"/></a>
                
                <form name="buscaDom" method="post" onsubmit=" ">
                    <div id="buscaDom">
                        <input class="inputBusca" title="Nome do Domínio" size="62" placeholder="Nome do Domínio" autofocus="on" required="required"/>
                        <input id ="valorLim" size="13" title="Valor Mínimo" placeholder="Valor Mínimo" type="number" min="0"/>
                        <button id="btPesquisa"  type="submit"><img id="lupa" src="../imagens/search-icon.png" /></button>
                    </div>
                </form>
   
            </header>
             
            
            <div id="caminho">
                <a href="../index.jsp">Ínicio</a>> <a href="pagDominio.jsp">Busca por Dominio</a>>
            </div>
            
            <article id="resultados">
              
            </article>
            <div id="opcoes">
                <a href="../index.jsp">
                     <button id="voltarBt">
                        <img id="voltar" src="../imagens/home.png"/>
                        Voltar
                     </button>
                     <a href="../index.jsp"><button id="grafico"><img id="graficoImg" src="../imagens/grafico.png"/><br>Ver gráficos</button></a>
                </a>
            </div>
        </article>

    </body>
</html>
