%%
load time

figure
bar([batch_NIPS_SGS; batch_NIPS_SVB]');

set(gca,'XTickLabel',mat2cell(batch_NIPS_x, 1));
legend('SGS','SVB');
xlabel('batch sizes');
ylabel('Time (second)');

%%
figure
bar([batch_NYT_SGS; batch_NYT_SVB]');
set(gca,'XTickLabel',mat2cell(batch_NYT_x, 1));
legend('SGS','SVB');
xlabel('batch sizes');
ylabel('Time (second)');