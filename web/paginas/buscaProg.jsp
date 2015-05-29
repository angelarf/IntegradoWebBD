<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/busca.css"> 
        <title>Gasto por Programa</title>
        <link rel="shortcut icon" type="image/x-icon" href="../imagens/icon.ico">
        <script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>

        <script>
            $(document).ready(function(){
                $('#ordenacao').on('change', function(){
                    if (this.value !== 'nothing' ) {
//                        console.log(this.value);
                        this.style.color="black";
                    }
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

            <form name="buscaProg" method="post">
                <div id="buscaDom">  
                    <input id="inProg" title="Nome do dominio que deseja ver o gasto total dos programas" size="62" placeholder="Nome do domínio que deseja ver" autofocus="on" required="required"/>
                    <input id ="valorLim" size="13" title="Valor Mínimo" placeholder="Valor Mínimo" type="number" min="0"/>
                    <select id ="ordenacao" title="Selecione a Ordenação">
                        <option value="nothing" disabled selected>Ordenar por:</option>
                         
                        <optgroup name="ord" >
                            <option value="Programas" class="option">Programas</option>
                            <option value="Gastos" class="option">Gastos</option>
                        </optgroup>
                    </select>
                    
                    <button id="btPesquisa" type="submit"><img id="lupa" src="../imagens/search-icon.png" /></button>
                </div>
            </form>

        </article>
        <article id="opcoes">
            <a href="../index.jsp"><button id="voltarBt"><img id="voltar" src="../imagens/home.png"/><br>Voltar</button></a>
        </article>
    </body>
</html>
