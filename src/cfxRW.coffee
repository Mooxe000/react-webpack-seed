React = require 'react'
{
  createElement
  createClass
} = React
{ render } = require 'react-dom'

cfxify = (e) ->
  (args...) -> createElement.apply @
  , [ e ].concat args
cfx = ->
  cfxify createClass.apply @
  , arguments

Comps = {}
for tag in [
  'div'
  'h1'
]
  Comps[tag] = cfxify tag

module.exports = {
  RW: React
  render
  cfx
  cfxify
  Comps
}
