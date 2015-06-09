
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.SubdominioBean"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/resultadoCss.css"> 
        <title>Resultados Subdomínio</title>
        <link rel="shortcut icon" type="image/x-icon" href="imagens/icon.ico">
        <script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <script type="text/javascript">

          // Load the Visualization API and the piechart package.
          google.load('visualization', '1.0', {'packages':['corechart']});

          // Set a callback to run when the Google Visualization API is loaded.
          google.setOnLoadCallback(drawChart);

          // Callback that creates and populates a data table,
          // instantiates the pie chart, passes in the data and
          // draws it.
          function drawChart() {
              <%   ArrayList<SubdominioBean> s_list = (ArrayList<SubdominioBean>)request.getAttribute("s_list");%>
            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Programa');
            data.addColumn('number', 'Gasto');
            data.addRows([
                <%
                    for(SubdominioBean s: s_list){
                        if (s.getName().length() > 4){
                    %>
                        ['<%=   s.getName().substring(0,5)%>', <%=    s.getGastoTotal()%>],
                <% }} %>
              ['', 0]
            ]);

            // Set chart options
            var options = {'title':'Gastos dos programas',
                           'width':1080,
                           'height':540};

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
            chart.draw(data, options);
          }
        </script>
        
        <script>
            function graf()
            {
                document.getElementById('pagGrafico').style.display='inline';
                document.getElementById('bloqueio').style.display='inline';
                document.getElementById('imgfechar').style.display='inline';
                document.getElementById('fechar').style.display='inline';
            }
            function fechar()
            {
                document.getElementById('pagGrafico').style.display='none';
                document.getElementById('bloqueio').style.display='none';
                document.getElementById('imgfechar').style.display='none';
                document.getElementById('fechar').style.display='none';
            }
                
            function verificaForm()
            {
                if ($.trim($("#inputNome").val()).length == 0)
                {
                    alert("Por favor, preencha o campo \"Nome do subdominio\".");
                    return false;
                }
                return true;
            }
            /*function enviaConsulta() 
            {
                var inputNome = $("#inputNome").val();
                var mesDesejado = $("#selectMes").val();
                
            }*/

           /* $(document).ready(function()
            {
            });*/
        </script>

    </head>
    <body>
        <div id="bloqueio">
            <div id="pagGrafico">
                <div id="teste"></div>
                <div id="chart_div"></div> 
            </div>
            <div id="fechar">
                <img id="imgfechar" src="imagens/close.png" onclick="fechar()"/>
            </div>
        </div>
        
        <article id="corpo">
            <header>
                <a href="index.jsp"><img id="logo" src="imagens/logo.png"/></a>
                <form name="buscaSub" method="get" onsubmit="return verificaForm()" action="buscaSubdominio"> <!--!--> 
                    <div id="buscaDom">
                        <input class="inputBusca" name="inputNome" id = "inputNome" size="62" placeholder="Nome do Subdomínio" autofocus="on" title="Selecione o subdominio desejado."/>
                        <select name="mes" id="selectMes" title="Selecione o mês que deseja ver">
                            <optgroup  label="Meses">
                                <option value=1 class="option">Janeiro</option>
                                <option value=2 class="option">Fevereiro</option>
                                <option value=3 class="option">Março</option>
                                <option value=4 class="option">Abril</option>
                                <option value=5 class="option">Maio</option>
                                <option value=6 class="option">Junho</option>
                                <option value=7 class="option">Julho</option>
                                <option value=8 class="option">Agosto</option>
                                <option value=9 class="option">Setembro</option>
                                <option value=10 class="option">Outubro</option>
                                <option value=11 class="option">Novembro</option>
                                <option value=12 class="option">Dezembro</option>
                            </optgroup>
                        </select>
                        <button id="btPesquisa"  type="submit"><img id="lupa" src="imagens/search-icon.png" /></button>
                    </div>
                </form>
            </header>
            <div id="caminho">
                <a href="index.jsp">Ínicio</a>> <a href="paginas/buscaSub.jsp">Busca por Subdomínio</a>>
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
                        //ArrayList<SubdominioBean> s_list = (ArrayList<SubdominioBean>)request.getAttribute("s_list");
                        //System.out.println("oobaa"+users.isEmpty());
                        if(s_list.isEmpty()) {
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
                                <th>Descriçao do Subdominio</th><th>Gasto Total</th>
                            </tr>
                            <%
                            for(SubdominioBean s: s_list){
                            %><tr>
                                <td id="nomeprog"> <%= s.getName()%> </td><td> <%= df.format(s.getGastoTotal())%></td>
                            </tr>
                            <% } %>
                        </table>
                    <% } %>
                
            </div>

            <a href="#pagGrafico" onclick="graf()">
                        <button id="grafico">
                            <img id="graficoImg" src="imagens/grafico.png"/>
                            <br>Gráficos
                        </button>
                    </a>
        </article>
    </body>
</html>
