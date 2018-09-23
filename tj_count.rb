public
def tj_count(x)
  i = 0
  j = 0
  if block_given? == true
    while i < self.length
      if yield(self[i]) == true
        j += 1
      end
      i+=1
    end
    return j
  else
    while i < self.length
      if self[i] == x
        j+=1
      end
      i+=1
    end
    return j
  end
end

#[1,2,3,2,2,3,1,3,5,6,3,2,1,1,2,7,87,87,212,1,2].tj_count(2)
#[1,2,3,4,5,6,7,8,9].tj_count(2){|i| i%2==0}
