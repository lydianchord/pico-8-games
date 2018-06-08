pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
t={}c=64q=96w=127l=line
for i=0,11 do
add(t,{(2^0.5)^i,13-i%6})
end
::_::cls()l(0,0,c-1,q-1,1)l(c,q-1,w,0,1)l(0,w,c-1,q,1)l(c,q,w,w,1)
for i=1,#t do
o=t[i]
x=o[1]
if(x>1)rect(c-x,q-x*1.5,c+x,q+x*0.5,o[2])
x*=2^(1/32)
if(x>c)x=1
o[1]=x
end
flip()goto _
