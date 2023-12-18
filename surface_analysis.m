%
% Données importées depuis les analyses
%
data = [1167	35	5	1	3	487	12	0	0	2
3486	182	29	10	13	853	24	5	2	0
26222	556	84	20	38	5580	40	10	4	11
3704	51	5	2	0	1565	16	2	0	0
32326	53	1	1	0	25597	37	0	0	0
23380	28	2	1	0	19652	10	0	0	0
17929	59	6	3	2	13926	18	0	0	0
32587	180	21	5	2	22303	68	4	1	0
22840	87	6	0	3	18714	42	2	0	0
24324	114	9	1	0	19011	54	1	0	0
23275	32	6	0	1	19480	5	0	0	0];

%
% Mise en échelle logarithmique
%

data = log(data + 1);

%
% Catégorisation
%

data = data(1:end-2,:);
particules = data(:,1:5);
particulesMetal = data(:,6:10);

%
% Visualisation
%

% Toutes particules

figure;
surf(particules);
view(60,30);

xticks(1:5);
xticklabels({'>0', '50<x<100', '100<x<150', '150<x<200', '>200'});

yticks(1:9);
yticklabels({'Coupe','Ebav','Brossage','Souf1','Form1','Ecrous','Souf2','Form2','SortieB3'});

zticks(0:2:12);
zticklabels(floor(exp(0:2:12)));

title('Evolution toutes particules');
xlabel('Tailles particules');
ylabel('Etape de process');
zlabel('Nombres de particules');

% Particules métalliques

figure;
surf(particulesMetal);
view(60, 30);

xticks(1:5);
xticklabels({'>0', '50<x<100', '100<x<150', '150<x<200', '>200'});

yticks(1:9);
yticklabels({'Coupe','Ebav','Brossage','Souf1','Form1','Ecrous','Souf2','Form2','SortieB3'});

zticks(0:2:12);
zticklabels(floor(exp(0:2:12)));

title('Evolution particules métalliques');
xlabel('Tailles particules');
ylabel('Etape de process');
zlabel('Nombres de particules');
