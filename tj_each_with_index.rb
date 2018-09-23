public
def tj_each_with_index(a=self)
  i = 0
  while i < a.length
  yield(i,a[i])
  i+=1
  end
end

#[2,3,3].tj_each_with_index do |v,i|
#  puts "#{i} #{v}"
#end
