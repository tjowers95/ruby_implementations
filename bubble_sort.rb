def bubble_sort(a)
  i = 0
  j = 0
  k = 0
  while k == 0
    if a[i] > a[i+1]
      b = a[i]
      a[i] = a[i+1]
      a[i+1] = b
      j += 1
    end
    i += 1

    if(i == a.length - 1)&&(j == 0)
      k = 1
    end

    if(i == a.length - 1)
      i = 0
      j = 0
    end
  end
end

def bubble_sort_by(a)
  i = 0
  j = 0
  k = 0
  while k == 0
    if yield(a[i],a[i+1]) > 0
      j += 1
      b = a[i]
      a[i] = a[i+1]
      a[i+1] = b 
    end
    if (i == a.length-1)&&(j == 0)
      k = 1
    end
    i+=1
    if (i == a.length-1)
      i = 0
      j = 0
    end
  end
  return a
end





bubble_sort_by(["hey","hello","hi"]) do |l,r| 
   l.length - r.length
 end
