function tablelength(T) -- This function replaces the built in functions for a arrays length like len() in python
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end


function toBase2(val) -- from decimal to Binary
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
    return(string.reverse(str)) -- return the string reversed since the functions outputs it backwards
end

function base2to(val)
    val=string.reverse(tostring(val))
    ar={}
    num=1
    lis={}
    for c in val:gmatch"." do -- create a table with all the 0 & 1 seperated
        table.insert(lis, c)
    end
    
    for x=1,tablelength(lis) do
        if lis[x]=="1" then
            table.insert(ar, num)
        end
        num=num+num
    end
    
    s = 0
    for i,v in ipairs(ar) do -- this functions gives the sum of the items in the ar[] table 
        s = s + v
    end
    return(s) -- return the sum of the table 
end
