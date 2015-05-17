% process of learning
figure
load pro

h=plot(1:93, [pro_SGS07;pro_SGS10;pro_SVB2]);
legend('SGS07','SGS10','SVB')
set(h(1), 'linewidth',2)
set(h(2),'linestyle','-.', 'linewidth',2)
set(h(3),'linestyle',':', 'linewidth',2)

xlabel('batch sequence number')
ylabel('perplexity')
grid on