function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end


function toBase2(val)
    str=""
    ar={}
    while val~=0 
    do
        if val%2==0 then
            table.insert(ar, "0")
            val=val/2
        else
            table.insert(ar, "1")
            val=(val-1)/2
        end
    end
    for i=1,tablelength(ar) 
    do 
        str=str .. ar[i]
    end
    return(string.reverse(str))
end

print(toBase2(7))

function base2to(val)
    val=tostring(val)
    ar={}
    num=1
    lis={}
    str=""
    for c in val:gmatch"." do
        table.insert(lis, c)
    end
    
    for x=1,tablelength(lis) do
        if lis[x]=="1" then
            table.insert(ar, num)
        end
        num=num+num
    end
    
    for i=1,tablelength(ar) 
    do 
        str=str .. ar[i]
    end
    return(str)
end

print(base2to(10))
