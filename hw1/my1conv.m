function y= my1conv(x1,x2)

l1=length(x1);
l2=length(x2);
w=l1+l2-1;
s=zeros(w,l2);

q=1;
f=1;
g=1;
while q<=l2

       
        for i=f:f+l1-1
           s(i)=x1(g);
           g=g+1;
           
        end
        f=f+1+w;
        g=1;
        q=q+1;
        
end

p=zeros(l2);
E=p(:,1);
for i=1:l2
    E(i)=x2(i);
end


y=s*E;
