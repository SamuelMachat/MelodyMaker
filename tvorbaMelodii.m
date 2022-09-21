clear all
close all
clc

% vzorkovací frekvence
fs = 4000*16;
% výška (v Hz) základního tónu
komorniA = 440;
% rychlost tempa skladby
tempo = 200;
% melodie patøící prvnímu nástroji, který ve skladbì hraje
melodie = [];
% ladìní, ve kterém hraje první nástroj
ladeni1 = 'rovnTempPulton';
% výbìr prvního nástroje
% na výbìr jsou nástroje: beep brm, krm , hola a holala
nastroj1 = 'brm';
dynamika = 1;

% závorkama by se daly pøidávat akordy
% melodieStr = '0.25c1 0.25d1 0.25e1 0.25f1 0.5g1 0.5g1 0.5a1 0.5a1 0.5g1 0.5p1 0.5a1 0.5a1 0.5g1 0.5p1 0.25f1 0.25f1 0.25f1 0.25f1 0.5e1 0.5e1 0.5d1 0.5d1 0.5g1 0.5p1 0.25f1 0.25f1 0.25f1 0.25f1 0.5e1 0.5e1 0.5d1 0.5d1 0.5c1 1k1';%'0.5cis1 0.5c1 1d1 0.5c2 0.5d2 0.5c2 1k1';%'0.5c1 1d1';
%  melodieStr = '0.25c4 0.25c+4 0.25c++4 0.25c+++4';%'0.5cis1 0.5c1 1d1 0.5c2 0.5d2 0.5c2 1k1';%'0.5c1 1d1';
% 
%  melodie = pridejTonyZRetezce(melodie,melodieStr,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% testString = '23.5cdef';

vyska = 4; %udává, v jaké oktávì se tón nachází
tempo = 50;
nastroj1 = 'hejhola';
nastroj2 = 'hejhola';
% vyska=vyska*2^(-1/24);
for index = 1:25
    aktualniVyska = vyska;
    if mod(index,2)==0
        aktualniVyska=vyska*2^(1/24);  
    end;
    melodie = pridejTon(melodie,'c',aktualniVyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
    melodie = pridejTon(melodie,'c+',aktualniVyska,1/4,komorniA,ladeni1,nastroj2,tempo,fs,dynamika);
    melodie = pridejTon(melodie,'c++',aktualniVyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
    melodie = pridejTon(melodie,'c+++',aktualniVyska,1/4,komorniA,ladeni1,nastroj2,tempo,fs,dynamika);
%     melodie = pridejTon(melodie,'d',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
%     melodie = pridejTon(melodie,'d+',vyska,1/4,komorniA,ladeni1,nastroj2,tempo,fs,dynamika);
%     melodie = pridejTon(melodie,'d++',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
%     melodie = pridejTon(melodie,'d+++',vyska,1/4,komorniA,ladeni1,nastroj2,tempo,fs,dynamika);
end;
% melodie = pridejTon(melodie,'e',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'e+',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'f',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'f+',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'f++',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'f+++',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'g',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'g+',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% 
% melodie = pridejTon(melodie,'c',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'d+',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'e',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'f+',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'g',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'g+',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'a',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'a+',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'g',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'p',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'a',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'a+',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'g',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'p',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'f',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'f+',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'f',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'f+',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'e',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'e+',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'d',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'d+',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'g',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'p',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'f',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'f+',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'f',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'f+',vyska,1/4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'e',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'e+',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'d',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'d+',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'c',vyska,1/2,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
% melodie = pridejTon(melodie,'p',vyska,4,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);

melodie2 = [];
vyska = 4; %udává, v jaké oktávì se tón nachází
tempo = 400;
%   melodieStr = '4p1 0.25c2 0.25d2 0.25e2 0.25f2 0.5g2 0.5g2 0.5a2 0.5a2 0.5g2 0.5p2 0.5a2 0.5a2 0.5g2 0.5p2 0.25f2 0.25f2 0.25f2 0.25f2 0.5e2 0.5e2 0.5d2 0.5d2 0.5g2 0.5p2 0.25f2 0.25f2 0.25f2 0.25f2 0.5e2 0.5e2 0.5d2 0.5d2 0.5c2 1k2';%'0.5cis1 0.5c1 1d1 0.5c2 0.5d2 0.5c2 1k1';%'0.5c1 1d1';
melodieStr = '';  
melodieStr =  strcat(melodieStr,' 4p1 0.5c2 0.25d2 0.25d2 0.25d2 0.25d2');%'0.5cis1 0.5c1 1d1 0.5c2 0.5d2 0.5c2 1k1';%'0.5c1 1d1';
for index = 1:10
    melodieStr = strcat(melodieStr,' 0.25p1 0.25d2 0.5c2 0.25d2 0.25d2 0.25d2 0.25p2');
    melodieStr = strcat(melodieStr,' 0.25p1 0.25d2 0.5c2 0.25d2 0.25d2 0.25d2 0.25d2');
end; %0.125 0.125p1 0.125 0.125p1 0.375 0.125 0.125
melodieStr = strcat(melodieStr,' 1k1');
  % % melodieStr = '0.25c1 0.25c+1 0.25c++1 0.25c+++1';%'0.5cis1 0.5c1 1d1 0.5c2 0.5d2 0.5c2 1k1';%'0.5c1 1d1';
% % 
dynamika2 = 4;
 melodie2 = pridejTonyZRetezce(melodie2,melodieStr,komorniA,ladeni1,'hola',tempo,fs,dynamika2);

 
 melodie3 = [];
vyska = 4; %udává, v jaké oktávì se tón nachází
tempo = 400;
nastroj3 = 'krm';
dynamika3 = 6;
melodieStr = '11p1 ';
melodie3 = pridejTonyZRetezce(melodie3,melodieStr,komorniA,ladeni1,nastroj3,tempo,fs,dynamika3);

%   melodieStr = '4p1 0.25c2 0.25d2 0.25e2 0.25f2 0.5g2 0.5g2 0.5a2 0.5a2 0.5g2 0.5p2 0.5a2 0.5a2 0.5g2 0.5p2 0.25f2 0.25f2 0.25f2 0.25f2 0.5e2 0.5e2 0.5d2 0.5d2 0.5g2 0.5p2 0.25f2 0.25f2 0.25f2 0.25f2 0.5e2 0.5e2 0.5d2 0.5d2 0.5c2 1k2';%'0.5cis1 0.5c1 1d1 0.5c2 0.5d2 0.5c2 1k1';%'0.5c1 1d1';
% melodieStr = strcat(melodieStr,'6p1');%'0.5cis1 0.5c1 1d1 0.5c2 0.5d2 0.5c2 1k1';%'0.5c1 1d1';
for index = 1:20
    dynamika3 = dynamika3*(1+1*(index/40));
    melodieStr ='';
    melodieStr = strcat(melodieStr,' 0.125h3 0.125p1 0.125g3 0.125p1 0.250p1 0.125g3 0.125g3 ');
    melodie3 = pridejTonyZRetezce(melodie3,melodieStr,komorniA,ladeni1,nastroj3,tempo,fs,dynamika3);
end;
for index = 1:20
    melodieStr ='';
    melodieStr = strcat(melodieStr,' 0.125h3 0.125p1 0.125g3 0.125p1 0.250p1 0.125g3 0.125g3 ');
    melodie3 = pridejTonyZRetezce(melodie3,melodieStr,komorniA,ladeni1,nastroj3,tempo,fs,dynamika3);
end;
for index = 1:20
    melodieStr ='';
    
%     melodie3 = pridejTon(melodie3,'c',aktualniVyska,0.250/(2^index),komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
   melodieStr = strcat(melodieStr,' 0.1h3 0.1h3 0.1h3 0.1h3 0.1h3');
    melodie3 = pridejTonyZRetezce(melodie3,melodieStr,komorniA,ladeni1,nastroj3,tempo,fs,dynamika3);
end;
    melodieStr ='';
melodieStr = strcat(melodieStr,'1k1');
    melodie3 = pridejTonyZRetezce(melodie3,melodieStr,komorniA,ladeni1,nastroj3,tempo,fs,dynamika3);
  % % melodieStr = '0.25c1 0.25c+1 0.25c++1 0.25c+++1';%'0.5cis1 0.5c1 1d1 0.5c2 0.5d2 0.5c2 1k1';%'0.5c1 1d1';
% % 


 

% spojení vektorù jednotlivých nástrojù v jednu stopu
skladba = spojVektory(melodie,melodie2);
skladba = spojVektory(skladba,melodie3);



plot(skladba);

figure();
NFFT = 512;
NOVERLAP = 128;
WINDOW = hamming(512);
spectrogram (skladba, WINDOW, NOVERLAP, NFFT, fs, 'yaxis');

% pøehrání skladby
sound(skladba,fs);
% uložení výsledku do zvukového souboru
audiowrite('vytvor.wav',skladba,fs)
