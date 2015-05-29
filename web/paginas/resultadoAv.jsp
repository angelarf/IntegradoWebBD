
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/resultAv.css"> 
        <title>JSP Page</title>
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
                <article id="formulario">  
                    <label>Ver gastos de</label>
                    <input type="date">
                    <label>a</label>
                    <input type="date">
                    
                </article>
            <button id="btPesquisa"  onclick="window.location.href='../index.jsp'"><img id="lupa" src="../imagens/search-icon.png" /></button>
            </form>
            
            
                
            
        </header>
        
        </article>
        <article id="resultados">
            <a href="../index.jsp">Ínicio</a>><a href="pagAvancada.jsp">Busca Avançada</a>>
        </article>
        
    </body>
</html>
