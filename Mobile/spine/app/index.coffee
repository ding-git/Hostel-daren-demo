require('lib/setup')

Spine   = require('spine')
{Stage} = require('spine.mobile')

class App extends Stage.Global
  constructor: ->
    super

	$.ajax 'http://localhost:3000/cities.json',
	    type: 'GET'
	    error: (jqXHR, textStatus, errorThrown) ->
	        $('body').append "AJAX Error: #{textStatus}"
	    success: (data, textStatus, jqXHR) ->
           for h in data
	             $('body').append "<li>城市 ： #{h.name} -- 省份 ： #{h.state}</li>"
	
	

module.exports = App