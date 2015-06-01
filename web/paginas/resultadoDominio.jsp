<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/resultadoCss.css"> 
        <title>Resultados Domínio</title>
        <link rel="shortcut icon" type="image/x-icon" href="../imagens/icon.ico">
 
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
            
            
            <a href="../index.jsp">
                 <button id="voltarBt">
                    <img id="voltar" src="../imagens/home.png"/>
                    Voltar
                 </button>
            </a>
            <div id="resultados">
                <table>
                    <tr>
                        <th>Programa do Domínio</th><th>Gasto</th>
                    </tr>
                    <tr>
                        <td id="nomeprog"> Programinha 1 de teste </td><td>Gasto</td>
                    </tr>
                    <tr>
                        <td id="nomeprog"> Programinha 2 de teste </td><td>Gasto</td>
                    </tr>
                    <tr>
                        <td id="nomeprog"> Programinha 3 de teste </td><td>Gasto</td>
                    </tr>
                    <tr>
                        <td id="nomeprog"> Programinha 4 de teste </td><td>Gasto</td>
                    </tr>
                    <tr>
                        <td id="nomeprog"> Programinha 5 de teste </td><td>Gasto</td>
                    </tr>
                    <tr>
                        <td id="nomeprog"> Programinha 6 de teste </td><td>Gasto</td>
                    </tr>
                    <tr>
                        <td id="nomeprog"> Programinha 7 de teste </td><td>Gasto</td>
                    </tr>
                    <tr>
                        <td id="nomeprog"> Programinha 8 de teste </td><td>Gasto</td>
                    </tr>
                    <tr>
                        <td id="nomeprog"> Programinha 9 de teste </td><td>Gasto</td>
                    </tr>
                    <tr>
                        <td id="nomeprog"> Programinha 10 de teste </td><td>Gasto</td>
                    </tr>
                </table>
                <div id="paginacao">
                   espaço pra colocar os bang de paginaçao
                </div>
            </div>

            <a href="../index.jsp"><button id="grafico"><img id="graficoImg" src="../imagens/grafico.png"/><br>Ver Gráficos</button></a>
        </article>

    </body>
</html>
