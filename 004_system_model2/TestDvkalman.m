clear all

dt = 0.1;
t = 0:dt:10

Nsamples = length(t)

Xsaved = zeros(Nsamples,2);
Zsaved = zeros(Nsamples,1);
Tsaved = zeros(Nsamples,1);

for k=1:Nsamples
    [z,a] = GetPos();
    [pos ,vel] = DvKalman(z);
    Xsaved(k,:)=[pos vel];
    Zsaved(k) = z;
    Tsaved(k) = a;
end

figure
hold on
plot(t,Zsaved(:),'r.')
plot(t,Xsaved(:,1))
xlabel('Time[sec]')
ylabel('Position[m]')
legend('Kalman Filter','Measurement')

figure
hold on
plot(t,Xsaved(:,2))
plot(t,Tsaved(:),'b-')
xlabel('Time[sec]')
ylabel('Velocity[m]')
legend('Kalman Filter','Measurement')