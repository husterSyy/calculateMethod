function y=euler(i)
f0 = 1; g0 = exp(1);
delta=0.01;  %  delta=0.001
time=10;
t=0:delta:time;
f=zeros(size(t));
g=zeros(size(t));
f1=zeros(size(t));
g1=zeros(size(t));
f(1)=f0;
g(1)=g0;
for i=2:length(t)
    f1(i-1) = 2i.*f(i-1).*log(max(g(i-1),0.001));
    f(i)=f(i-1)+f1(i-1)*delta;
    g1(i-1) = -2i.*g(i-1).*log(max(f(i-1),0.001));
    g(i)=g(i-1)+g1(i-1)*delta;
end
f_true = exp(sin(t.*t));
g_true = exp(cos(t.*t));
figure
plot(t,f,'o',t,f_true),xlabel('t'),ylabel('f');
figure
plot(t,g,'o',t,g_true),xlabel('t'),ylabel('g');