function decay_sub(d,lam,batch, cap)
    styles={'+r-','ob-','*m-','xg-','sk-','dc-'};
    lgds=cell(1, length(batch));
    hs=[];
    for i=1:length(batch)
        h=plot(lam, d(:,i),styles{i},'linewidth', 1.5, 'MarkerSize',10);
        lgd=strcat('batch=',num2str(batch(i))); 
        hs=[hs h];
        lgds{i}=lgd;
        hold on
    end
        
    xlabel(strcat('   Decay Factor \newline \newline',cap))
    ylabel('Perplexity')

    set(gca,'XTick',lam)
    legend(hs, lgds);
    %set(gca,'xlim',[min(x)/2, max(x)*2]);
    set(gcf,'color','none')
    grid on
end