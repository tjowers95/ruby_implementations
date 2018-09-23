public
def each(a=self)
  i = 0
  while i < a.length
  yield(a[i])
  i+=1
  end
end

#[1,2,3].each do |k|
#  puts 1 + k
#end
