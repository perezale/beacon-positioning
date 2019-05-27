
pladema = imread('pladema.jpg');
[plano_alto, plano_ancho, trash] = size(pladema);
options = jsondecode(fileread('pladema.json'))
% [pladema_alto, pladema_ancho] = [options.height, options.width]
min_x = 0;
max_x = plano_ancho;
min_y = 0;
max_y = plano_alto;  

pos = min_x:max_x;
f = (plano_alto/plano_ancho)*pos;


figure(1)
subplot(121)
imagesc([min_x max_x], [min_y max_y], pladema)
hold on;
plot(pos,f,'b-*','linewidth',1.5)
hold off;