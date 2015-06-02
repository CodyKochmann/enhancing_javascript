Array::random_node = () ->
  this[Math.floor(Math.random()*this.length)]

Array::blacklist_rule=(s)->
  out=[]
  for i in this
    if i.indexOf(s)==-1
      out.push i
  out

Array::whitelist_rule=(s)->
  out=[]
  for i in this
    if s in i
      out.push i
  out

Array::remove_duplicates=()->
  out=[]
  for i in this
    if out.indexOf(i) == -1
      out.push i
  out
