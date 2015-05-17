clear
clc
%NYT数据集合，299000文档，runTimes=1，decay=0.7, N=400,alpha=0.1, beta=0.03
batch=[50	200	800	3200	12800];
thread=[1 4 8];
d=[11450	8122	5943	4638	4438;
    11689.10811 8290.414854 6106.750032 4887.546548 4808.585796;
    11783.65056 8485.318262 6353.728221 5102.172298 4848.582348 ];
h=semilogx(batch, d');
legend(h,'Single thread','4 threads','8 threads');
xlabel('Batch size')
ylabel('perplexity')
set(gca,'XTick',batch)
set(gca,'xlim',[min(batch), max(batch)]);
set(gcf,'color','none')
grid on
