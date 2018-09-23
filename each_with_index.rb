public
def each_with_index(a=self)
  c = 0
  while c < a.length
  yield(i)
  c+=1
  end
end

#[2,3,3].each_with_index do |v,i|
#  puts "#{i} #{v}"
#end
