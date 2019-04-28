ready = ->
  new Typed '.element',
    strings: [
      "Below is a collection of my finest photography moments, ^500 just for you!"
    ]
    typeSpeed: 50
  return


$(document).on 'turbolinks:load', ready
 
