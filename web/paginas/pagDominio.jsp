
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/busca.css"> 
        <title>Busca por domínio </title>
        <link rel="shortcut icon" type="image/x-icon" href="../imagens/icon.ico">
        <script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
        
       < <script>
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
            function enviaConsulta() 
            {
                var inputNome = $("#inputNome").val();
                var valorLimite = $("#valorLim").val();
                alert("Deu certo.");
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
            <!-- <form name="buscaDom" method="post" onsubmit=" "> -->
                <div id="buscaDom">
                    <input id = "inputNome" class="inputBusca" size="62" placeholder="Nome do Domínio" autofocus="on"/>
                    <input id ="valorLim" size="13" placeholder="Valor Mínimo"/>
                    <button id="btPesquisa"  type="submit"><img id="lupa" src="../imagens/search-icon.png" /></button>
                </div>
            <!-- </form> -->
        </article>
        <article id="opcoes">
             <a href="../index.jsp">
                 <button id="voltarBt">
                    <img id="voltar" src="../imagens/home.png"/>
                    Voltar
                 </button>
             </a>
        </article>
    </body>
</html>
