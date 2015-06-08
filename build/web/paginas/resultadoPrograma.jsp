<%@page import="model.ProgramaBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/resultadoCss.css"> 
        <title>Resultados Programa</title>
        <link rel="shortcut icon" type="image/x-icon" href="imagens/icon.ico">
        <script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
        <!--<script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <script type="text/javascript">

          // Load the Visualization API and the piechart package.
          google.load('visualization', '1.0', {'packages':['corechart']});

          // Set a callback to run when the Google Visualization API is loaded.
          google.setOnLoadCallback(drawChart);

          // Callback that creates and populates a data table,
          // instantiates the pie chart, passes in the data and
          // draws it.
          function drawChart() {
              <%   ArrayList<ProgramaBean> p_list = (ArrayList<ProgramaBean>)request.getAttribute("p_list");%>
            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Programa');
            data.addColumn('number', 'Gasto');
            data.addRows([
                <%/*
                    for(ProgramaBean p: p_list){
                  */  %>
                        ['<%/*=   p.getNomePrograma()*/%>', <%/*=    p.getGastoTotal()*/%>],
                <% /*} */%>
              ['', 0]
            ]);

            // Set chart options
            var options = {'title':'Gastos dos programas',
                           'width':800,
                           'height':600};

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
            chart.draw(data, options);
          }
        </script>-->

        <script>
            function verificaForm()
            {
                if ($.trim($("#inProg").val()).length == 0)
                {
                    alert("Por favor, preencha o campo \"Nome do dominio\".");
                    return false;
                }
                if ($("#valorLim").val() == "")
                {
                    alert("Por favor, preencha o campo \"Valor minimo\".");
                    return false;
                }
                if ($("#valorLim").val() < 0)
                {
                    alert("O valor do campo \"Valor minimo\" não pode ser negativo.");
                    return false;
                }
                if (!$.isNumeric($("#valorLim").val()))
                {
                    alert("O valor do campo \"Valor minimo\" deve ser numérico.");
                    return false;
                }
                if ($("#ordenacao").val() == null)
                {
                    alert("Por favor, selecione uma opção de ordenação.");
                    return false;
                }
                return true;
            }
            /*function enviaConsulta() 
            {
                var inputNome = $("#inProg").val();
                var valorLimite = $("#valorLim").val();
                var opcaoOrdenacao = $("#ordenacao").val();
            }*/

            
            $(document).ready(function()
            {
                /*$("#btPesquisa").click(function()
                {
                    if (verificaForm()) enviaConsulta();
                });*/
                
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
            <img id="logo" src="imagens/logo.png"/>
            <form name="buscaProg" method="get" action="buscaPrograma" onsubmit="return verificaForm() ">
               <div id="buscaDom">  
                    <input name="inProg" id="inProg" size="62" placeholder="Nome do domínio" autofocus="on" title="Insira o nome do dominio."/>
                    <input name="valor" id ="valorLim" size="13" placeholder="Valor Mínimo" title="Insira um valor númerico. Não use vírgula, use ponto."/>
                    <select name="ordenacao" id ="ordenacao" title="Selecione a Ordenação desejada.">
                        <option value="nothing" disabled selected>Ordenar por:</option>
                         
                        <optgroup name="ord">
                            <option value="Programas" class="option">Programas</option>
                            <option value="Gastos" class="option">Gastos</option>
                        </optgroup>
                    </select>
                    
                    <button id="btPesquisa" type="submit"><img id="lupa" src="imagens/search-icon.png" /></button>
                </div>
            </form>
        </header>
              
            <div id="caminho">
                <a href="index.jsp">Ínicio</a>> <a href="paginas/buscaProg.jsp">Busca por Programa</a>>
            </div>
            
            
            <a href="index.jsp">
                 <button id="voltarBt">
                    <img id="voltar" src="imagens/home.png"/>
                    Home
                 </button>
            </a>
            <div id="resultados">
                <%
                        DecimalFormat df = new DecimalFormat("#.00");
                        df.setMaximumFractionDigits(2);
                        //ArrayList<ProgramaBean> p_list = (ArrayList<ProgramaBean>)request.getAttribute("p_list");
                        if(p_list.isEmpty()) {
                %>
                            <div id="noresults">
                                <p>Nenhum resultado para exibir <b style="color: green">:(</b></p>
                                <p>Tente uma nova consulta</p>
                            </div>
                <%
                          } else {
                %>
                        <table>
                            <tr>
                                <th>Programa do Domínio</th><th>Gasto Total</th>
                            </tr>
                            <%
                            for(ProgramaBean p: p_list){
                            %><tr>
                                <td id="nomeprog"> <%= p.getNomePrograma()%> </td><td> <%= df.format(p.getGastoTotal())%></td>
                            </tr>
                            <% } %>
                        </table>
                    <% } %>
            <!--<div id="chart_div"></div>  -->
            </div>

            <a href="index.jsp"><button id="grafico"><img id="graficoImg" src="imagens/grafico.png"/><br>Gráficos</button></a>
        </article>

        
    </body>
</html>
