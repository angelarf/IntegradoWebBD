
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/busca.css"> 
        <title>Gasto Mensal Subdominio</title>
        <link rel="shortcut icon" type="image/x-icon" href="../imagens/icon.ico">
        
        <script>
            
        </script>
        
    </head>
    <body>
        <article id="corpo">
        <div id="left"></div>
        <div id="right"></div>
        <div id="top"></div>
        <div id="bottom"></div>
            <a href="../index.jsp"><img id="logo" src="../imagens/logo.png"/></a>
            <div id="txtDesc">Um pequeno texto descrevendo a consulta pequeno pequeno pequeno</div>
            <form name="buscaSub" method="post" onsubmit="return validaform()">
                <div id="buscaDom">
                    <input class="inputBusca" title="Nome do Subdomínio" size="62" placeholder="Nome do Subdomínio" autofocus="on" required="required"/>
                    <select id="selectMes" title="Dados referentes a 2014">
                        <optgroup name="mes" label="Meses">
                            <option class="option">Janeiro</option>
                            <option class="option">Fevereiro</option
                            <option class="option">Março</option>
                            <option class="option">Abril</option>
                            <option class="option">Maio</option>
                            <option class="option">Junho</option>
                            <option class="option">Julho</option>
                            <option class="option">Agosto</option>
                            <option class="option">Setembro</option>
                            <option class="option">Outubro</option>
                            <option class="option">Novembro</option>
                            <option class="option">Dezembro</option>
                        </optgroup>
                    </select>
                    <button id="btPesquisa"  type="submit"><img id="lupa" src="../imagens/search-icon.png" /></button>
                </div>
           </form>

        </article>
        <article id="opcoes">
            <a href="../index.jsp"><button id="voltarBt"><img id="voltar" src="../imagens/home.png"/><br>Voltar</button></a>
        </article>
    </body>
</html>
