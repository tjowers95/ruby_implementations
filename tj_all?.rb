public
def tj_all?(a = self)
  i = 0
  r = true
  while i < a.length && r == true
    if yield(a[i]) == false||nil
      r = false
    else
      r = true
    end
    i+=1
    return r
  end
end

#[1,2,3].tj_all? do |i|
#  i < 3
#end
