public
def tj_each(a=self)
  i = 0
  while i < a.length
  yield(a[i])
  i+=1
  end
  return a
end

#[1,2,3].tj_each do |k|
#  puts 1 + k
#end
