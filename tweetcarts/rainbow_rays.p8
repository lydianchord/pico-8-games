pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
t={}w=128m=432l=200p=w/2
for i=0,m/6-1 do
add(t,{i*6,8+i%6})
end
::_::cls(1)
for i=#t,1,-1 do
o=t[i]a=o[1]/m
line(-16,p,l*cos(a),p-l*sin(a),o[2])
line(w+15,p,w-l*cos(a),p-l*sin(a),o[2])
o[1]+=1
end
flip()goto _
