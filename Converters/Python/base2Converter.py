def toBase2(val):
    ar=[]
    while val!=0:
        if val%2==0:
            ar.append("0")
            val/=2
        else:
            ar.append("1")
            val=(val-1)/2
    return int(''.join(c for c in ar[::-1] if c.isdigit()))

def base2to(val):
    ar=[]
    num=1
    lis = [int(x) for x in str(val)]
    l=len(lis)
    for x in range(len(lis)-1, -1, -1):
        if lis[x]==1:
            ar.append(num)
        num+=num
    return sum(ar)
