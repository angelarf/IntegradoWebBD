
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/resultadoCss.css"> 
        <title>Busca por Programa</title>
        <link rel="shortcut icon" type="image/x-icon" href="../imagens/icon.ico">

      </head>
    <body>
        <article id="corpo">
        <div id="left"></div>
        <div id="right"></div>
        <div id="top"></div>
        <div id="bottom"></div>
        
        <header>
            <img id="logo" src="../imagens/logo.png"/>
            <a href="../index.jsp"><button id="grafico"><img id="graficoImg" src="../imagens/grafico.png"/><br>Ver graficos</button></a>
            <form>
                <input id="buscaFunc" size="58" placeholder="Digite sua busca por programas"/>
                <button id="btPesquisa"  onclick="window.location.href='../index.jsp'"><img id="lupa" src="../imagens/search-icon.png" /></button>
            </form>
            
        </header>
        </article>
        </article>
        <article id="resultados">
            <a href="../index.jsp">Ínicio</a>><a href="pagAvancada.jsp">Busca por programa</a>>
        </article>
    </body>
</html>
