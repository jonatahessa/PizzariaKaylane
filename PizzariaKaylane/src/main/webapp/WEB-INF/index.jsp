<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./_resources/estiloPaginaInicial.css">
        <link href="https://fonts.googleapis.com/css?family=Hind" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Marck+Script" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Caveat|Vast+Shadow" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Permanent+Marker" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Baloo+Da" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lusitana" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Jaldi" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Courgette" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Tangerine" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Libre+Franklin" rel="stylesheet">
        <link rel="shortcut icon" href="./_imagens/favicon.ico" />
        <script type="text/javascript" src="./_resources/domPaginaInicial.js"></script>
        <title>Pizzaria Kaylane</title>
    </head>
    <body>
        <section id="principal">
            <div id="menu">
                <ul>
                    <li><button type="button" id="buttonhome">Home</button></li>
                    <li><button type="button" id="buttonnossacasa">Nossa Casa</button></li>
                    <li><button type="button" id="buttonpromocoes">Promoções</button></li>
                    <li><button type="button" id="buttoncardapio">Cardápio</button></li>
                    <li><button type="button" id="buttonlocalizacao">Localização</button></li>
                    <li><button type="button" id="buttoncontato">Contato</button></li>
                </ul>
            </div>

            <div id="firstimg">
                <!--<div id="logokaylane">
                  <h1>KAYLANE</h1>
                  <hr/>
                  <p>Pizzaria & Esfiharia</p>
                </div>
                <p id="telefonestitulo">5612-7027<br/>
                  5612-9510<br/>
                  5612-9462</p>-->
                <img src="./_imagens/imgoficial.JPG">
            </div>

            <div class="sessoes" id="nossacasa">
                <h1 class="titulos">Nossa Casa</h1>
                <hr/>
                <div id="fachada">
                    <img src="_imagens/FachadaPizzaria.jpg">
                </div>
                <p>Em 1999, Carlos de Toledo Domenico criou a PIZZARIA DOMENICO, unindo a tradição da pizza com a sofisticação informal. E não parou de crescer, evoluir, adotando o lema: “Atender à expectativa dos clientes” como sinônimo de qualidade.</p>
                <p>A localização tornou-se privilegiada: Haddock Lobo X Alameda Tietê, a porta de entrada dos Jardins. O investimento constante nas instalações, produtos e serviços, faz com que a DOMENICO seja considerada um dos clássicos, na terra das pizzarias.</p>
                <p>Todos os recursos são colocados à disposição dos funcionários, para que a filosofia desde a fundação continue: SERVIR PIZZAS COM DEDICAÇÃO, CONHECIMENTO E ALEGRIA.</p>
            </div>

            <div class="sessoes" id="sessaopromocoes">
                <h1 class="titulos">Promoções</h1>
                <hr/>
                <c:forEach var="promo" items="${promocoes}">
                    <div class="paineispromo">
                        <h3>${promo.nome}</h3>
                        <p>${promo.descricao}</p>
                        <p>${promo.preco}</p>
                    </div>
                </c:forEach>
            </div>



            <div class="sessoes" id="sessaocardapio">
                <h1 class="titulos">Cardápio</h1>
                <hr/>
                <button id="abrepizzas" type="button" name="abrepizzas">Abrir Pizzas</button>
                <div class="mostrarpizzas">
                    <button class="buttonsfecharpizzas" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="numeropizza">Número</th>
                            <th id="saborpizza">Sabor</th>
                            <th id="descricao">Ingredientes</th>
                            <th id="precopizza">Grande</th>
                            <th id="precobroto">Brotinho</th>
                        </tr>
                        <c:forEach var="pizza" items="${pizzas}">
                            <tr>
                                <td class="celulas">${pizza.codigo}</td>
                                <td class="celulas">${pizza.nome}</td>
                                <td>${pizza.descricao}</td>
                                <td class="celulas">${pizza.preco}</td>
                                <td class="celulas">${pizza.precoBroto}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharpizzas" type="button" name="fecharcardapio">Fechar</button>
                </div>

                <button id="abrepizzasdoces" type="button" name="abrepizzasdoces">Abrir Pizzas Doces</button>

                <div class="mostrarpizzasdoces">
                    <button class="buttonsfecharpizzasdoces" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="numeropizza">Número</th>
                            <th id="saborpizza">Sabor</th>
                            <th id="descricao">Ingredientes</th>
                            <th id="precopizza">Grande</th>
                            <th id="precobroto">Brotinho</th>
                        </tr>
                        <c:forEach var="pizzadoce" items="${pizzasdoces}">
                            <tr>
                                <td class="celulas">${pizzadoce.codigo}</td>
                                <td class="celulas">${pizzadoce.nome}</td>
                                <td>${pizzadoce.descricao}</td>
                                <td class="celulas">${pizzadoce.preco}</td>
                                <td class="celulas">${pizzadoce.precoBroto}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharpizzasdoces" type="button" name="fecharcardapio">Fechar</button>
                </div>

                <button id="abreesfirras" type="button" name="abreesfirras">Abrir Esfihas</button>

                <div class="mostraresfirras">
                    <button class="buttonsfecharesfirras" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="saboresfirra">Sabor</th>
                            <th id="precoesfirra">Preço</th>
                        </tr>
                        <c:forEach var="esfiha" items="${esfihas}">
                            <tr>
                                <td class="celulas">${esfiha.nome}</td>
                                <td class="celulas">${esfiha.preco}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharesfirras" type="button" name="fecharcardapio">Fechar</button>
                </div>

                <button id="abreesfirrasdoces" type="button" name="abreesfirrasdoces">Abrir Esfihas Doces</button>

                <div class="mostraresfirrasdoces">
                    <button class="buttonsfecharesfirrasdoces" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="saboresfirra">Sabor</th>
                            <th id="precoesfirra">Preço</th>
                        </tr>
                        <c:forEach var="esfihadoce" items="${esfihasdoces}">
                            <tr>
                                <td class="celulas">${esfihadoce.nome}</td>
                                <td class="celulas">${esfihadoce.preco}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharesfirrasdoces" type="button" name="fecharcardapio">Fechar</button>
                </div>

                <button id="abrebeirutes" type="button" name="abrebeirutes">Abrir Beirutes</button>

                <div class="mostrarbeirutes">
                    <button class="buttonsfecharbeirutes" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="saborpizza">Sabor</th>
                            <th id="descricao">Ingredientes</th>
                            <th id="precopizza">Preço</th>
                        </tr>
                        <c:forEach var="beirute" items="${beirutes}">
                            <tr>
                                <td class="celulas">${beirute.nome}</td>
                                <td>${beirute.descricao}</td>
                                <td class="celulas">${beirute.preco}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharbeirutes" type="button" name="fecharcardapio">Fechar</button>
                </div>
            </div>

            <div class="sessoes" id="sessaolocalizacao">
                <h1 class="titulos">Localização</h1>
                <hr/>
                <p>Rua Zike Tuma, 940 - Jardim Ubirajara, São Paulo - SP</p>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d913.4200470062309!2d-46.67087714187909!3d-23.687392333888592!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce45588182e867%3A0xce1520e42dcf6a20!2sKaylane!5e0!3m2!1spt-BR!2sbr!4v1502374344829" allowfullscreen></iframe>
            </div>

            <footer id="sessaocontato">
                <div class="sessoes">
                    <h1 class="titulos">Contato</h1>
                    <hr/>
                    <h2><a href="tel:01156127027">5612-7027</a><br/>
                        <a href="tel:01156129510">5612-9510</a><br/>
                        <a href="tel:01156129462">5612-9462</a></h2>
                    <p>Abrimos todos os dias das 18h às 00h</p>
                    <p id="copyright">Copyright (c) Pizzaria Kaylane Copyright Holder All Rights Reserved.</p>
                </div>
            </footer>
        </section>
    </body>
</html>
