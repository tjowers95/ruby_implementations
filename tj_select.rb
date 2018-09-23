public
def tj_select(o=self)
  i = 0
  r =[]
  if o == Hash
    a = o.keys
  else
    a = o
  end
  while i < a.length
    if yield(a[i]) == true
      r << a[i]
    end
    i+=1
  end
  return r
end
[1,2,3,4,5].tj_select do |i|
  i > 1
end
