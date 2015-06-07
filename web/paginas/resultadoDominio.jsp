<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.DominioBean"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/resultadoCss.css"> 
        <title>Resultados Domínio</title>
        <link rel="shortcut icon" type="image/x-icon" href="imagens/icon.ico">
 	
        <script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" language="javascript" src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" language="javascript" src="//cdn.datatables.net/plug-ins/1.10.7/integration/foundation/dataTables.foundation.js"></script>
        <script type="text/javascript" charset="utf-8">
                 function verificaForm()
                {
                    if ($.trim($("#inputNome").val()).length == 0)
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
                    return true;
                }
            
                $(document).ready(function() {
                        $('#tableresults').dataTable({
                            "bSort": false, // Disable sorting
                            "bInfo": false,
                            "iDisplayLength": 10, //records per page
                            "sDom": "t<'row'<'col-md-6'i><'col-md-6'p>>",
                            //"sPaginationType": "bootstrap"
                        });
                } );
        </script>

        
        
    </head>
    <body>
        <article id="corpo">
            <header>
                <a href="../index.jsp"><img id="logo" src="imagens/logo.png"/></a>
                
                <form name="buscaDom" method="get" onsubmit="return verificaForm() " action="buscaDominio">
                    <div id="buscaDom">
                        <input id = "inputNome" class="inputBusca" title="Nome do Domínio" size="62" name="inputNome" placeholder="Nome do Domínio" autofocus="on"/>
                        <input id ="valorLim" size="13" title="Valor Mínimo" placeholder="Valor Mínimo" name="valor"/>
                        <button id="btPesquisa"  type="submit"><img id="lupa" src="imagens/search-icon.png" /></button>
                    </div>
                </form>
   
            </header>
             
            
            <div id="caminho">
                <a href="index.jsp">Ínicio</a>> <a href="paginas/pagDominio.jsp">Busca por Dominio</a>>
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
                        ArrayList<DominioBean> d_list = (ArrayList<DominioBean>)request.getAttribute("d_list");
                        //System.out.println("oobaa"+users.isEmpty());
                        if(d_list.isEmpty()) {
                %>
                            <div id="noresults">
                                <p>Nenhum resultado para exibir <b style="color: green">:(</b></p>
                                <p>Tente uma nova consulta</p>
                            </div>
                <%
                          } else {
                %>
                        <table id="tableresults">
                            <thead>
                                <tr>
                                    <th>Programa do Domínio</th><th>Gasto</th>
                                </tr>
                            </thead>
                            <tbody>
                            <%
                            int i=0;
                            DominioBean d = new DominioBean();
                            //for(DominioBean d: d_list){
                            for(i=0; i < d_list.size(); i++){//GAMBIS
                                d = d_list.get(i);
                            %>
                               <tr>
                                    <td id="nomeprog"> <%= d.getNomePrograma()%> </td><td> <%= df.format(d.getGasto())%></td>
                                </tr>
                            <% } %>
                            </tbody>
                        </table>
                    <% } %>
                    
            </div>

            <a href="index.jsp"><button id="grafico"><img id="graficoImg" src="imagens/grafico.png"/><br>Gráficos</button></a>
        </article>

    </body>
</html>
