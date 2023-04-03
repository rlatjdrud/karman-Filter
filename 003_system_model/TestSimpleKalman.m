clear all

dt = 0.2;
t = 0:dt:10;

Nsample = length(t);

Xsaved = zeros(Nsample,1);
Zsaved = zeros(Nsample,1);

for k=1:Nsample 
    z = Getvolt();
    volt = SimpleKalman(z);
    
    Xsaved(k) = volt;
    Zsaved(k) = z;
end

figure
plot(t,Xsaved,'o-')
hold on
plot(t,Zsaved,'r:*')

