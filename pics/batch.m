% plot the batch graphics
figure
load batch

subplot(1,2,1);
% nips sgs and svb is reversed
x=batch_NIPS_SGS; batch_NIPS_SGS=batch_NIPS_SVB; batch_NIPS_SVB=x;
% end of reverse fix
batch_sub(batch_NIPS_SGS, batch_NIPS_SVB,batch_NIPS_x,'(a) NIPS corpus');
%rotateticklabel(gca, 'x', 50);
subplot(1,2,2);
% NOT CONVERGENCE FIX
batch_NYT_SVB=[8646.93578, 8443.152213, 8275.508241, 7908.096589, ...
7312.348464, 7000.808194, 6338.989544, 5846.822118, 5460.684901, ...
5074.48032, 4813.602719, 4669.697864];
len=length(batch_NYT_SVB);
% END of fix
batch_sub(batch_NYT_SGS(1:len), batch_NYT_SVB,batch_NYT_x(1:len),'(b) NYT corpus');
%rotateticklabel(gca, 'x', 50);
saveas(gcf,'batch.eps','psc2');