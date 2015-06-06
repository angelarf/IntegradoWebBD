<%@page import="model.ProgramaBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>;
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/resultadoCss.css"> 
        <title>Resultados Programa</title>
        <link rel="shortcut icon" type="image/x-icon" href="imagens/icon.ico">
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
            <img id="logo" src="imagens/logo.png"/>
            <form name="buscaProg" method="get" action="buscaPrograma" onsubmit=" ">
               <div id="buscaDom">  
                    <input name="inProg" id="inProg" size="62" placeholder="Nome do domínio que deseja ver" autofocus="on"/>
                    <input name="valor" id ="valorLim" size="13" placeholder="Valor Mínimo"/>
                    <select name="ordenacao" id ="ordenacao" title="Selecione a Ordenação">
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
                    Início
                 </button>
            </a>
            <div id="resultados">
                <%
                        DecimalFormat df = new DecimalFormat("#.00");
                        df.setMaximumFractionDigits(2);
                        ArrayList<ProgramaBean> p_list = (ArrayList<ProgramaBean>)request.getAttribute("p_list");
                        //System.out.println("oobaa"+users.isEmpty());
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
            </div>

            <a href="index.jsp"><button id="grafico"><img id="graficoImg" src="imagens/grafico.png"/><br>Ver Gráficos</button></a>
        </article>

        
    </body>
</html>
