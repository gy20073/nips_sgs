clear
clc
%NYT数据集合，299000文档，batch=3200, runTimes=1，decay=0.7, N=400,alpha=0.1, beta=0.03
thread=[1 2 4 8 16];
d=[14035.28931 7156.687321 3843.654276 2023.418805 1155.407798];
h=semilogx(thread, d','ro-');
legend(h,'DSGS time consumption');
xlabel('Number of threads')
ylabel('Time elapsed')
set(gca,'XTick',thread)
set(gca,'xlim',[min(thread), max(thread)]);
set(gcf,'color','none')
grid on
