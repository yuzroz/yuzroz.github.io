'use strict';

document.body.onload = addElement;

function addElement () {
  // create a new div element
  var newDiv = document.createElement("div");
  // and give it some content
  newDiv.innerHTML = '<header id="global-header" class="cf">' +
    '<div class="logo-and-title">' +
    '<a href="/" target="_self" class=""></a>' +
    '<span><span>キャッシュフロー</span><span>シミュレーター</span></span>' +
    '</div>' +
    '</header>' +
    '<main id="main">' +
    '<content id="main-content" class="">' +
    '<section id="registration-view" class="ng-scope">' +
    '<div class="bg-pic"></div>' +
    '<div class="login content active">' +
    '<form>' +
    '<figure class="logo"><img src="https://cashflow.orixbank.co.jp/img/common/header-logo.png?v=1572988803"></figure>' +
    '<h3>ただいまメンテナンス中です</h3>' +
    '<p class="period">メンテナンス期間：<br>2020年1月16日(木)10:00~13:00</p>' +
    '<p class="message">ただいまメンテナンスを実施しております。<br>作業中は一時サービス停止となり、ご不便おかけいたしますが、<br>何卒ご理解ご協力のほどお願い申し上げます。</p>' +
    '</form>' +
    '</div>' +
    '</section>' +
    '</content>' +
    '</main>';

  // add the newly created element and its content into the DOM
  var currentDiv = document.getElementById("div1");
  document.body.replaceChild(newDiv, currentDiv);
}
