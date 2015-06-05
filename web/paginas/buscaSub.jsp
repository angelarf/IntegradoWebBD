
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/busca.css"> 
        <title>Gasto Mensal Subdominio</title>
        <link rel="shortcut icon" type="image/x-icon" href="../imagens/icon.ico">
        <script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
        
        <script>
            function verificaForm()
            {
                if ($.trim($("#inputNome").val()).length == 0)
                {
                    alert("Por favor, preencha o campo \"Nome do subdominio\".");
                    return false;
                }
                return true;
            }
            function enviaConsulta() 
            {
                var inputNome = $("#inputNome").val();
                var mesDesejado = $("#selectMes").val();
            }

            
            $(document).ready(function()
            {
                $("#btPesquisa").click(function()
                {
                    if (verificaForm()) enviaConsulta();
                });
            });
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
            <!--form name="buscaSub" method="get" onsubmit="return validaform()" action="/buscaSubdominio"> <!--!--> 
            <form method='get' action="../buscaSubdominio">
                <div id="buscaDom">
                    <input class="inputBusca" id = "inputNome" size="62" placeholder="Nome do Subdomínio" autofocus="on" name="inputNome"/>
                    <select id="selectMes" name='mes' title="Dados referentes a 2014">
                        <optgroup label="Meses">
                            <option value=1 class="option">Janeiro</option>
                            <option value=2 class="option">Fevereiro</option
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
                    <button id="btPesquisa"  type="submit"><img id="lupa" src="../imagens/search-icon.png" /></button>
                </div>
           </form> 

        </article>
        <article id="opcoes">
            <a href="../index.jsp"><button id="voltarBt"><img id="voltar" src="../imagens/home.png"/><br>Home</button></a>
        </article>
    </body>
</html>
