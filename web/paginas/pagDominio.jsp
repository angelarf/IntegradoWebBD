
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/busca.css"> 
        <title>Busca por domínio </title>
        <link rel="shortcut icon" type="image/x-icon" href="../imagens/icon.ico">
        
        
    </head>
    <body>
        <article id="corpo">
            <div id="left"></div>
            <div id="right"></div>
            <div id="top"></div>
            <div id="bottom"></div>



            <a href="../index.jsp"><img id="logo" src="../imagens/logo.png"/></a>
            <div id="txtDesc">Um pequeno texto descrevendo a consulta pequeno pequeno pequeno</div>
            <form name="buscaDom" method="post" onsubmit=" ">
                <div id="buscaDom">
                    <input class="inputBusca" title="Nome do Domínio" size="62" placeholder="Nome do Domínio" autofocus="on" required="required"/>
                    <input id ="valorLim" size="13" title="Valor Mínimo" placeholder="Valor Mínimo" type="number" min="0"/>
                    <button id="btPesquisa"  type="submit"><img id="lupa" src="../imagens/search-icon.png" /></button>
                </div>
            </form>
        </article>
        <article id="opcoes">
             <a href="../index.jsp">
                 <button id="voltarBt">
                    <img id="voltar" src="../imagens/home.png"/>
                    Voltar
                 </button>
             </a>
        </article>
    </body>
</html>
