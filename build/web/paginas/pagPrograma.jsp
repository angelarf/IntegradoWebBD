
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/paginaProd.css"> 
        <title>JSP Page</title>
        <link rel="shortcut icon" type="image/x-icon" href="../imagens/icon.ico">

  
    </head>
    <body>
        <article id="corpo">
        <div id="left"></div>
        <div id="right"></div>
        <div id="top"></div>
        <div id="bottom"></div>
                <img id="logo" src="../imagens/logo.png"/>
            <label id="txtFunc">Programas </label>
            <form>
            <input id="buscaFunc" size="62" placeholder="Digite sua busca por programas"/>
            <button id="btPesquisa"  onclick="window.location.href='../index.jsp'"><img id="lupa" src="../imagens/search-icon.png" /></button>
            </form>

        </article>
        <article id="opcoes">
            <a href="../index.jsp"><button id="voltarBt"><img id="voltar" src="../imagens/home.png"/><br>Voltar</button></a>
        </article>
    </body>
</html>
