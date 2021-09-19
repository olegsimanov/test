loader =  (element, options={}) ->

  console.log('inside loader()...')
  loaderElement = document.createElement('div')
  loaderElement.className = 'loader'
  document.body.appendChild(loaderElement)

window.loader = loader