
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/resultadoCss.css"> 
        <title>Resultados Subdomínio</title>
        <link rel="shortcut icon" type="image/x-icon" href="../imagens/icon.ico">
        <script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>

    </head>
    <body>
        <article id="corpo">
            <header>
                <img id="logo" src="../imagens/logo.png"/>
                <form name="buscaProg" method="post" onsubmit=" ">
                    <div id="buscaDom">
                        <input class="inputBusca" id = "inputNome" size="62" placeholder="Nome do Subdomínio" autofocus="on"/>
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
            </header>
            <div id="caminho">
                <a href="../index.jsp">Ínicio</a>> <a href="buscaSub.jsp">Busca por Subdomínio</a>>
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
                        <th>Descriçao do Subdominio</th><th>Gasto Total</th>
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
                </table>
                
            </div>

            <a href="../index.jsp"><button id="grafico"><img id="graficoImg" src="../imagens/grafico.png"/><br>Ver Gráficos</button></a>
        </article>
    </body>
</html>
