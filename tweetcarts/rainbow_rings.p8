pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
c={8,9,10,11,12,2}t={}f=0n=0w=128m=w/4r=rnd
::_::
cls()f+=1
if(f%16==0 and#t<12)add(t,{r(w),r(w),0,c[1+n%6]})n+=1
for i=1,#t do
o=t[i]s=m*-sin(o[3])
if(s>1)circ(o[1],o[2],s,o[4])
if(s==-m)o[1]=r(w)o[2]=r(w)
o[3]+=1/64
end
flip()goto _
