echo = -> console.log arguments[0]

{
  cfx
  cfxify
  render
  Comps
  Styl
} = require './cfxRW.coffee'

{
  div
  h1
} = Comps

# { Router, Route, Link } = require 'react-router'

styles =
  hello:
    color: 'red'

Hello = cfx

  render: ->
    div {}
    ,
      h1 style: styles.hello
      , 'Hello React!!!'

render (Hello {})
, document.getElementById 'app'
