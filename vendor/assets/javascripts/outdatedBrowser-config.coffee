addLoadEvent = (func) ->
  oldonload = window.onload
  if typeof window.onload != 'function'
    window.onload = func
  else

    window.onload = ->
      if oldonload
        oldonload()
      func()
      return

  return

addLoadEvent ->
  outdatedBrowser
    bgColor: '#3f3f3f'
    color: '#e3e3e3'
    lowerThan: 'boxShadow'
  return
