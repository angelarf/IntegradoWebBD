
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/index.css"> 
        <title>Dados Abertos</title>
        <link rel="shortcut icon" type="image/x-icon" href="imagens/icon.ico">
   </head>
    <body id="corpo">
    <header id="cabeca">
            <img id="logo" src="imagens/logo.png"/>  
        </header> 

        <section id="area">
            <h1>Selecione o que deseja buscar:</h1>

            
                <article class="box" id="dominio">
                    <a href="paginas/pagDominio.jsp" >
                        <img id="imagem" src="imagens/avancado.png"/>
                        <div id="texto">Domínio</div>
                        <div id="legenda">Veja os gastos de um domínio</div>
                    </a>
                </article>
            <article class="box" id="subdominio">
                <a href="paginas/buscaSub.jsp" >
               
                    <img id="imagem" src="imagens/avancado.png"/>
                    <div id="texto">Subdomínio</div>
                    <div id="legenda">Pesquise o gasto total de um subdominio por mês</div>
                </a>
            </article>
            
            <article class="box" id="programa">
                <a href="paginas/buscaProg.jsp" >
                    <img id="imagem" src="imagens/avancado.png"/>
                    <div id="texto">Programa</div> 
                    <div id="legenda">Pesquise o gasto total dos programas pertencentes a um dominio</div>
               </a>
            </article>


        </section>
        <footer>
            <div style="width: 100%; float:left">
                Projeto Engenharia de Sorftware II | Laboratório de Banco de dados | Desenvolvimento Web 2015
                <a href="paginas/about.jsp"> <img src="imagens/sobre.png" style=" height: 35px; margin-right: 20px; float:right "/> </a>
            </div>
            
        </footer>

    </body> 
</html>
