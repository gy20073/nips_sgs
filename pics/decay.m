% plot the batch graphics
figure
load decay

% remove one
sel=2:5;
decay_NIPS_per=decay_NIPS_per(:,sel);
decay_NIPS_batch=decay_NIPS_batch(sel);

subplot(1,2,1);
decay_sub(decay_NIPS_per, decay_NIPS_lam,decay_NIPS_batch,'(a) NIPS corpus');

% remove two
sel=3:6;
decay_NYT_per=decay_NYT_per(:,sel);
decay_NYT_batch=decay_NYT_batch(sel);

subplot(1,2,2);
decay_sub(decay_NYT_per, decay_NYT_lam,decay_NYT_batch,'(b) NYT corpus');
%saveas(gcf,'decay.eps','psc2');