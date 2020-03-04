def frequency(l):
    ls=sorted(l)
    print(ls)
    from itertools import groupby
    l2=[len(list(group)) for key, group in groupby(ls)]
    mina=min(l2)
    maxa=max(l2)
    #print mina,maxa
    r=[]
    s=[]
    a=[]
    b=[]
    for i in range(0,len(l2)):
        if l2[i]==mina:
            a.append(i)
        if l2[i]==maxa:
            b.append(i)
    for i in range(0,len(a)):
        z=a[i]
        sumo=0
        for k in range(0,z+1):
            sumo=sumo+l2[k]
        sumo=sumo-1
        r.append(ls[sumo])
    for i in range(0,len(b)):
        z=b[i]
        sumo=0
        for k in range(0,z+1):
            sumo=sumo+l2[k]
        sumo=sumo-1
        s.append(ls[sumo])
    return r,s
   
   
l1=[11,12,13,14,15,11,12,11,11,11,11,0]
a,b=frequency(l1)
print(a,"\n",b)