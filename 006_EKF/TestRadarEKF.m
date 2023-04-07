clear all
dt = 0.05;
t = 0:dt:20;

Nsamples = length(t);

Xsaved = zeros(Nsamples,4);
Zsaved = zeros(Nsamples,3);

for k=1:Nsamples
    [r,vel1,alt2]= GetRadar(dt);

    [pos,vel,alt,dis] = RadarEKF(r,dt);

    Xsaved(k,:) = [pos,vel,alt,dis];
    Zsaved(k,:) = [r,vel1,alt2];
end

PosSaved = Xsaved(:,1)
VelSaved = Xsaved(:,2)
AltSaved = Xsaved(:,3)
DisSaved = Xsaved(:,4)

rSaved = Zsaved(:,1)
vel1Saved = Zsaved(:,2)
alt1Saved = Zsaved(:,3)

t=0:dt:Nsamples*dt-dt;

figure
hold on
plot(t,DisSaved)
plot(t,rSaved)
xlabel("Time[Sec]")
ylabel("DISTANTCE[m]")
legend("kalman","Measurement")

figure
hold on
plot(t,VelSaved)
plot(t,vel1Saved)
legend("vel")
xlabel("Time[Sec]")
ylabel("velocity[m]")
legend("kalman","Measurement")

figure
hold on
plot(t,AltSaved)
plot(t,alt1Saved)
legend("alt")
xlabel("Time[Sec]")
ylabel("Alt")
legend("kalman","Measurement")