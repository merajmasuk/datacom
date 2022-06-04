partition = {1.5, 2.5, 3.5}
quantization = {1, 2, 3, 4}
S = {0.7, 1.6, 1.2, 3.4, 3.1, 3.9, 4.2}
[I, Q] = quantiz(S, partition, quantization)

Q
dec2bin(Q)

stem(S, ‘r*’)

t = 0:0.1:2*pi
S = 4*sin(pi*t) % sampled signal
Quantization = [-3.25, -2.5, -1.5, -0.5, 0.5, 1.5, 2.5, 3.25]
Partition = [-3, -2, -1, 0, 1, 2, 3, 4]
[I, Q] = quantiz(S, partition, quantization)
% Q gives the quantized value
stem(t, S, 'b')
hold on
stem(t, Q, 'r*')

t = 0:0.1:2*pi
S = 4*sin(pi*t) % sampled signal
Quantization = [-3.25, -2.5, -1.5, -0.5, 0.5, 1.5, 2.5, 3.25]
Partition = [-3, -2, -1, 0, 1, 2, 3, 4]
[I, Q] = quantiz(S, partition, quantization)
% Q gives the quantized value
stem(t, S, 'b')
hold on
stem(t, Q, 'r*')

legend(‘Baseband’, ‘Sampled Value’)
xlabel(‘Time’)
ylabel(‘Amplitude’)
grid on
figure 
e = S - Q
plot = ‘’

t = 0:0.1:2*pi
S = 4*sin(pi*t) % sampled signal
Quantization = [-3.25, -2.5, -1.5, -0.5, 0.5, 1.5, 2.5, 3.25]
Partition = [-3, -2, -1, 0, 1, 2, 3, 4]
[I, Q] = quantiz(S, partition, quantization)
% Q gives the quantized value
stem(t, S, 'b')
hold on
stem(t, Q, 'r*')

load mtlb
X = mtlb
% sound(X)
S = X(1200:1300)
quantization = [-3.25, -2.5, -1.5, -0.5, 0.5, 1.5, 2.5, 3.25]
partition = [-3, -2, -1, 0, 1, 2, 3]
[I, Q] = quantiz(S, partition, quantization)
stem(Q, 'r')
hold on
stem(S, 'b*')
legend('Baseband', 'Sampled Value')
xlabel('Time')
ylabel('Amplitude')
grid on

load mtlb
X = mtlb
% sound(X)
% S = X(1200:1300)
quantization = [-3.25, -2.5, -1.5, -0.5, 0.5, 1.5, 2.5, 3.25]
partition = [-3, -2, -1, 0, 1, 2, 3]
[I, Q] = quantiz(X, partition, quantization)
sound(Q)

load mtlb
X = mtlb
% sound(X)
% S = X(1200:1300)
quantization = [-3.25, -2.5, -1.5, -0.5, 0.5, 1.5, 2.5, 3.25]
partition = [-3, -2, -1, 0, 1, 2, 3]
[I, Q] = quantiz(X, partition, quantization)
sound(Q)

load mtlb
X = mtlb
Xn = awgn(X, 5)
sound(Xn)
