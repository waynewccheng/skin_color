load("cmf.mat")

clf
hold on

plot(w,x,'r')
plot(w,y,'g')
plot(w,z,'b')

xlabel('Wavelength (nm)')

ylabel('Spectral Power Distribution')
set(gca,'yticklabel',[])

hleg = legend('$\bar{x}$','$\bar{y}$','$\bar{z}$');
set(hleg,'Interpreter','latex')
axis([380 780 0 2.5])
