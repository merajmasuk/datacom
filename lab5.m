t = -1.1:0.001:1.1; T = 1;
tau = 0.2;
a0 = tau/T; ft = a0;
n = 200;

for i=1:n,
    ft = ft + (2/T)*tau*sinc(i*tau/T)*cos(2*pi*i*t/T);
end

plot(t, ft);
xlabel('Time-----');
ylabel('Amplitude');
title('Gibbs phenomenon for n = ' + string(n));

hold on;
t = [-1.1 -1.1 -0.9 -0.9 -0.5 -0.1 -0.1 0.1 0.1 0.5 0.9 0.9 1.1 1.1];
ft = [0 1 1 0 0 0 1 1 0 0 0 1 1 0];
plot(t, ft, 'r');
hold off;
grid on;