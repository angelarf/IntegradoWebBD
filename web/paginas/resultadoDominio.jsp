<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.DominioBean"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/resultadoCss.css"> 
        <title>Resultados Domínio</title>
        <link rel="shortcut icon" type="image/x-icon" href="imagens/icon.ico">
 
    </head>
    <body>
        <article id="corpo">
            <header>
                <a href="../index.jsp"><img id="logo" src="imagens/logo.png"/></a>
                
                <form name="buscaDom" method="get" onsubmit=" " action="buscaDominio">
                    <div id="buscaDom">
                        <input class="inputBusca" name="inputNome" title="Nome do Domínio" size="62" placeholder="Nome do Domínio" autofocus="on" required="required"/>
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
                    Início
                 </button>
            </a>
            <div id="resultados">
                <%
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
                        <table>
                            <tr>
                                <th>Programa do Domínio</th><th>Gasto</th>
                            </tr>
                            <%
                            int i=0;
                            DominioBean d = new DominioBean();
                            //for(DominioBean d: d_list){
                            for(i=0; i < 10; i++){//GAMBIS
                                d = d_list.get(i);
                            %><tr>
                                <td id="nomeprog"> <%= d.getNomePrograma()%> </td><td> <%= d.getGasto()%></td>
                            </tr>
                            <% } %>
                        </table>
                    <% } %>
                    <% if(d_list.size()>10){ %>
                        <div id="paginacao">
                           ARRUMAR ISSO AQUI, TEM MAIS ITENS QUE O POSSIVEL === PAGINACAO 
                        </div>
                    <%}%>
            </div>

            <a href="index.jsp"><button id="grafico"><img id="graficoImg" src="imagens/grafico.png"/><br>Ver Gráficos</button></a>
        </article>

    </body>
</html>
