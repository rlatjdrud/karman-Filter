clear all

Nsamples = 500;

Xsaved = zeros(Nsamples, 2);
Zsaved = zeros(Nsamples, 1);

for k=1:Nsamples
  z = GetSonar();      
  [pos, vel] = DvKalman(z);
  
  Xsaved(k, :) = [pos vel];
  Zsaved(k)    = z;
  Tsaved(k) = (pos-40)/2;
end


dt = 0.02;
t  = 0:dt:Nsamples*dt-dt;

figure
hold on
plot(t, Zsaved(:), 'r.')
plot(t, Xsaved(:, 1))
xlabel('Time[sec]')
ylabel('Distance')

figure
hold on
plot(t, Tsaved(:))
plot(t, Xsaved(:,2))
xlabel('Time[sec]')
ylabel('Distance and Velocity')
legend('Distance','Velocity')