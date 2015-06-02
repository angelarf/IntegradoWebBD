
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/resultadoCss.css"> 
        <title>Resultados Programa</title>
        <link rel="shortcut icon" type="image/x-icon" href="../imagens/icon.ico">
        <script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>

     
        <script>
            $(document).ready(function()
            {
                $('#ordenacao').on('change', function()
                {
                    if (this.value !== 'nothing' ) 
                    {
//                        console.log(this.value);
                        this.style.color="black";
                    }
                });
            });    
        </script>
        
      </head>
    <body>
        <article id="corpo">
        <header>
            <img id="logo" src="../imagens/logo.png"/>
            <form name="buscaProg" method="post" onsubmit=" ">
               <div id="buscaDom">  
                    <input id="inProg" size="62" placeholder="Nome do domínio que deseja ver" autofocus="on"/>
                    <input id ="valorLim" size="13" placeholder="Valor Mínimo"/>
                    <select id ="ordenacao" title="Selecione a Ordenação">
                        <option value="nothing" disabled selected>Ordenar por:</option>
                         
                        <optgroup name="ord">
                            <option value="Programas" class="option">Programas</option>
                            <option value="Gastos" class="option">Gastos</option>
                        </optgroup>
                    </select>
                    
                    <button id="btPesquisa" type="submit"><img id="lupa" src="../imagens/search-icon.png" /></button>
                </div>
            </form>
        </header>
              
            <div id="caminho">
                <a href="../index.jsp">Ínicio</a>> <a href="buscaProg.jsp">Busca por Programa</a>>
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
                        <th>Programa do Domínio</th><th>Gasto Total</th>
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
