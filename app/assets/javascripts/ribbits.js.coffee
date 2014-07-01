textarea = document.getElementById 'ribbitText'
count = document.getElementById 'charCount'
button = document.getElementById 'ribbitBtn'

countChars = (e) ->
  len = textarea.value.length
  count.innerHTML = len

  if len > 140
    count.className = "limit"
    button.setAttribute "disabled", "disabled"
  else
    count.className = ""
    button.removeAttribute "disabled"

textarea.addEventListner "keyup", countChars, false
textarea.addEventListner "keydown", countChars, false


