/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

window.addEventListener('load', function(){
    new Glider(document.querySelector('.carousel__lista'), {
          slidesToShow: 1,
  slidesToScroll: 1,
  dots: '.carousel__indicadores',
  arrows: {
    prev: '.carousel__anterior',
    next: '.carousel__siguiente'
  },
  responsive: [
    {
      // pantalla mas grande de 450px
      breakpoint: 450,
      settings: {
        // Set to `auto` and provide item width to adjust to viewport
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },{
      // pantalla mas grande de 800px
      breakpoint: 800,
      settings: {
        slidesToShow: 5,
        slidesToScroll: 5
      }
    }
  ]
    });
});
