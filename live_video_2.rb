def a_method(param)
  p param
  p param.object_id

  param += ' beautiful'
  p param
  p param.object_id

  param << ' world'
  p param
  p param.object_id
end

str = "hello"
p str
p str.object_id

a_method(str)
p str
p str.object_id
