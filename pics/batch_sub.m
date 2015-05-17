function batch_sub(a,b,x, cap)
    h1=semilogx(x,a,'+r-');    
    hold on
    h2=semilogx(x,b,'ob-');
    
    xlabel(strcat('    batch size \newline \newline',cap))
    ylabel('perplexity')

    if(length(x)>6)
        x=x(2:2:(length(x)));
    end
    set(gca,'XTick',x)
    set(gca,'xlim',[min(x), max(x)]);

    legend([h1,h2],'SGS','SVB');
    set(gcf,'color','none')
    grid on
end