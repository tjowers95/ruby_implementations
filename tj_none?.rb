public
def tj_none?(a = self)
 i = 0
 j = true
 if block_given? == false
   while i < a.length
     if a[i] == true
       j = false
       break
     end
     i+=1
   end
 else
   while i < a.length
     if yield(a[i]) == true
       j = false
       break
     end
     i+=1
   end
 end
 return j
end

#[nil,false].tj_none?
#[1,2,3].tj_none?{|i| i > 3}
