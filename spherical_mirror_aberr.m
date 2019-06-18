function mbd = spherical_mirror_aberr(fn,D)

f = fn*D;
delta_x = 0.01;
x = 0:delta_x:D/2;
theta = asin(x./(2*f));

d = 2*f.*tan(2.*theta).*((cos(theta).^(-1)) - 1);

mbd = (8*delta_x)/(D^2)*sum(x.*d);
