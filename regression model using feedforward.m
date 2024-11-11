clear
clc

p = -6:0.09:6;
t = sin(p) + p .* cos(3 .* p);
net = fitnet(18,'trainrp');

net.trainParam.show = 27;
net.trainParam.epochs = 1000;
net.trainParam.max_fail=20;

net.divideFcn='dividerand';
net.divideParam.trainRatio = 60/100;
net.divideParam.valRatio = 20/100;
net.divideParam.testRatio = 20/100;

net = init(net);

net = train(net,p,t);

Y = sim(net,p);

plot(p,t,'o',p,Y,'r')
