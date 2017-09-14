function main() {
  var fecharPizzas = [];
  var fecharPizzasDoces = [];
  var fecharEsfirras = [];
  var fecharEsfirrasDoces = [];
  var fecharBeirutes = [];
  var fecharBebidas = [];
  var abrirPizzas = document.querySelector("#abrepizzas");
  var abrirPizzaDoces = document.querySelector("#abrepizzasdoces");
  var abrirEsfirras = document.querySelector("#abreesfirras");
  var abrirEsfirrasDoces = document.querySelector("#abreesfirrasdoces");
  var abrirBeirutes = document.querySelector("#abrebeirutes");
  var abrirBebidas = document.querySelector("#abrebebidas");
  var botaocardapio = document.querySelector("#buttoncardapio");
  var nossa = document.querySelector("#buttonnossacasa");
  var varhome = document.querySelector("#buttonhome");
  var promo = document.querySelector("#buttonpromocoes");
  var localiza = document.querySelector("#buttonlocalizacao");
  var contato = document.querySelector("#buttoncontato");

  fecharPizzas = document.querySelectorAll(".buttonsfecharpizzas");
  for (var i = 0; i < fecharPizzas.length; i++) {
    fecharPizzas[i].addEventListener("click", hidePizzas);
  }

  fecharPizzasDoces = document.querySelectorAll(".buttonsfecharpizzasdoces");
  for (var i = 0; i < fecharPizzasDoces.length; i++) {
    fecharPizzasDoces[i].addEventListener("click", hidePizzasDoces);
  }

  fecharEsfirras = document.querySelectorAll(".buttonsfecharesfirras");
  for (var i = 0; i < fecharEsfirras.length; i++) {
    fecharEsfirras[i].addEventListener("click", hideEsfirras);
  }

  fecharEsfirrasDoces =
      document.querySelectorAll(".buttonsfecharesfirrasdoces");
  for (var i = 0; i < fecharEsfirrasDoces.length; i++) {
    fecharEsfirrasDoces[i].addEventListener("click", hideEsfirrasDoces);
  }

  fecharBeirutes = document.querySelectorAll(".buttonsfecharbeirutes");
  for (var i = 0; i < fecharBeirutes.length; i++) {
    fecharBeirutes[i].addEventListener("click", hideBeirutes);
  }

  fecharBebidas = document.querySelectorAll(".buttonsfecharbebidas");
  for (var i = 0; i < fecharBebidas.length; i++) {
    fecharBebidas[i].addEventListener("click", hideBebidas);
  }

  abrirPizzas.addEventListener("click", showPizzas);
  abrirPizzaDoces.addEventListener("click", showPizzasDoces);
  abrirEsfirras.addEventListener("click", showEsfirras);
  abrirEsfirrasDoces.addEventListener("click", showEsfirrasDoces);
  abrirBeirutes.addEventListener("click", showBeirutes);
  abrirBebidas.addEventListener("click", showBebidas);
  varhome.addEventListener("click", home);
  promo.addEventListener("click", promocao);
  nossa.addEventListener("click", nossacasa);
  botaocardapio.addEventListener("click", cardapio);
  localiza.addEventListener("click", localizacao);
  contato.addEventListener("click", scrollcontato);
}

function home() { window.scrollTo(0, 0); }

function nossacasa() { document.querySelector("#nossacasa").scrollIntoView(); }

function promocao() {
  document.querySelector("#sessaopromocoes").scrollIntoView();
}

function cardapio() {
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function localizacao() {
  document.querySelector("#sessaolocalizacao").scrollIntoView();
}

function scrollcontato() {
  document.querySelector("#sessaocontato").scrollIntoView();
}

function showPizzas() {
  document.querySelector(".mostrarpizzas").style.display = "block";
  document.querySelector("#abrepizzas").style.display = "none";
}

function showPizzasDoces() {
  document.querySelector(".mostrarpizzasdoces").style.display = "block";
  document.querySelector("#abrepizzasdoces").style.display = "none";
}

function showEsfirras() {
  document.querySelector(".mostraresfirras").style.display = "block";
  document.querySelector("#abreesfirras").style.display = "none";
}

function showEsfirrasDoces() {
  document.querySelector(".mostraresfirrasdoces").style.display = "block";
  document.querySelector("#abreesfirrasdoces").style.display = "none";
}

function showBeirutes() {
  document.querySelector(".mostrarbeirutes").style.display = "block";
  document.querySelector("#abrebeirutes").style.display = "none";
}

function showBebidas() {
  document.querySelector(".mostrarbebidas").style.display = "block";
  document.querySelector("#abrebebidas").style.display = "none";
}

function hidePizzas() {
  document.querySelector(".mostrarpizzas").style.display = "none";
  document.querySelector("#abrepizzas").style.display = "block";
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function hidePizzasDoces() {
  document.querySelector(".mostrarpizzasdoces").style.display = "none";
  document.querySelector("#abrepizzasdoces").style.display = "block";
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function hideEsfirras() {
  document.querySelector(".mostraresfirras").style.display = "none";
  document.querySelector("#abreesfirras").style.display = "block";
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function hideEsfirrasDoces() {
  document.querySelector(".mostraresfirrasdoces").style.display = "none";
  document.querySelector("#abreesfirrasdoces").style.display = "block";
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function hideBeirutes() {
  document.querySelector(".mostrarbeirutes").style.display = "none";
  document.querySelector("#abrebeirutes").style.display = "block";
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function hideBebidas() {
  document.querySelector(".mostrarbebidas").style.display = "none";
  document.querySelector("#abrebebidas").style.display = "block";
  document.querySelector("#sessaocardapio").scrollIntoView();
}

window.addEventListener("load", main);
