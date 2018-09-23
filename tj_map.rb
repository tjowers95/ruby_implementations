public
def tj_map
  i = 0
  r = Array.new
  if (block_given?) && (self != Hash) 
    while i < self.length
      r << yield(self[i])
      i+=1
    end
    return r
  else (self == Hash)
    a = self.keys

    t = Array.new(a.length){Array.new(2)}
    while i < a.length
      t[i][0] = a[i]
      t[i][1] = self[a[i]] 
      i+=1
    end
    return t
  end
end
      
#  hash = {"a"=>1, "b"=>2, "c"=>3, "d"=>4, "e"=>5, "UID"=>"Tyler"} 
#  hash.tj_map
#=> [ [ "a", 1 ], [ "b", 2 ], [ "c", 3 ], [ "d", 4 ], [ "e", 5 ], [ "UID", "Tyler" ] ]

#  array = [1,2,3]
#  array.tj_map
# => [ 1, 2, 3 ]

#[1,2,3].tj_map do |n|
#  n + 1
#end
#=> [ 2, 3, 4 ]
