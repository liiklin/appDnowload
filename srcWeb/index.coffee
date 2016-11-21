
downloadFile = (url) ->
  try
    elemIF = document.createElement('iframe')
    elemIF.src = url
    elemIF.style.display = 'none'
    document.body.appendChild elemIF
  catch e
  return
