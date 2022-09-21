function [melodieOut]=pridejTon(melodie,ton,oktava,delka,komorniA,ladeni,nastroj,tempo,fs,dynamika)
    T = 4*delka*60/tempo/2;
    t = 0:1/fs:T-1/fs;
    odvozujiciA = komorniA/(2^3);
    f = odvozujiciA;
    
    if(strcmp(ton, 'p'))
        f = 0;
    end;
    if(strcmp(ladeni,'rovnTemp'))
        if(strcmp(ton, 'c') || strcmp(ton, 'do'))
            f = odvozujiciA*2^(-9/12);
        end;
        if(strcmp(ton, 'cis') || strcmp(ton, 'c#'))
            f = odvozujiciA*2^(-8/12);
        end;
        if(strcmp(ton, 'd') || strcmp(ton, 're'))
            f = odvozujiciA*2^(-7/12);
        end;
        if(strcmp(ton, 'dis') || strcmp(ton, 'd#'))
            f = odvozujiciA*2^(-6/12);
        end;
        if(strcmp(ton, 'e') || strcmp(ton, 'mi'))
            f = odvozujiciA*2^(-5/12);
        end;
        if(strcmp(ton, 'f') || strcmp(ton, 'fa'))
            f = odvozujiciA*2^(-4/12);
        end;
        if(strcmp(ton, 'fis') || strcmp(ton, 'f#'))
            f = odvozujiciA*2^(-3/12);
        end;
        if(strcmp(ton, 'g') || strcmp(ton, 'so'))
            f = odvozujiciA*2^(-2/12);
        end;
        if(strcmp(ton, 'gis') || strcmp(ton, 'g#'))
            f = odvozujiciA*2^(-1/12);
        end;
        if(strcmp(ton, 'a') || strcmp(ton, 'la'))
            f = odvozujiciA;
        end;
        if(strcmp(ton, 'ais') || strcmp(ton, 'a#'))
            f = odvozujiciA*2^(1/12);
        end;
        if(strcmp(ton, 'b') || strcmp(ton, 'h') || strcmp(ton, 'si'))
            f = odvozujiciA*2^(2/12);
        end;
    end;
    
    if(strcmp(ladeni,'rovnTempPulton'))
        if(strcmp(ton, '1') || strcmp(ton, 'c'))
            f = odvozujiciA*2^(-18/24);
        end;
        if(strcmp(ton, '2') || strcmp(ton, 'c+'))
            f = odvozujiciA*2^(-17/24);
        end;
        if(strcmp(ton, '3') || strcmp(ton, 'c#') || strcmp(ton, 'c++'))
            f = odvozujiciA*2^(-16/24);
        end;
        if(strcmp(ton, '4') || strcmp(ton, 'c+++'))
            f = odvozujiciA*2^(-15/24);
        end;
        if(strcmp(ton, '5') || strcmp(ton, 'd'))
            f = odvozujiciA*2^(-14/24);
        end;
        if(strcmp(ton, '6') || strcmp(ton, 'd+'))
            f = odvozujiciA*2^(-13/24);
        end;
        if(strcmp(ton, '7') || strcmp(ton, 'd++'))
            f = odvozujiciA*2^(-12/24);
        end;
        if(strcmp(ton, '8') || strcmp(ton, 'd+++'))
            f = odvozujiciA*2^(-11/24);
        end;
        if(strcmp(ton, '9') || strcmp(ton, 'e'))
            f = odvozujiciA*2^(-10/24);
        end;
        if(strcmp(ton, '10') || strcmp(ton, 'e+'))
            f = odvozujiciA*2^(-9/24);
        end;
        if(strcmp(ton, '11') || strcmp(ton, 'f'))
            f = odvozujiciA*2^(-8/24);
        end;
        if(strcmp(ton, '12') || strcmp(ton, 'f+'))
            f = odvozujiciA*2^(-7/24);
        end;
        if(strcmp(ton, '13') || strcmp(ton, 'f++'))
            f = odvozujiciA*2^(-6/24);
        end;
        if(strcmp(ton, '14') || strcmp(ton, 'f+++'))
            f = odvozujiciA*2^(-5/24);
        end;
        if(strcmp(ton, '15') || strcmp(ton, 'g'))
            f = odvozujiciA*2^(-4/24);
        end;
        if(strcmp(ton, '16') || strcmp(ton, 'g+'))
            f = odvozujiciA*2^(-3/24);
        end;
        if(strcmp(ton, '17') || strcmp(ton, 'g++'))
            f = odvozujiciA*2^(-2/24);
        end;
        if(strcmp(ton, '18') || strcmp(ton, 'g+++'))
            f = odvozujiciA*2^(-1/24);
        end;
        if(strcmp(ton, '19') || strcmp(ton, 'a'))
            f = odvozujiciA;
        end;
        if(strcmp(ton, '20') || strcmp(ton, 'a+'))
            f = odvozujiciA*2^(1/24);
        end;
        if(strcmp(ton, '21') || strcmp(ton, 'a++'))
            f = odvozujiciA*2^(2/24);
        end;
        if(strcmp(ton, '22') || strcmp(ton, 'a+++'))
            f = odvozujiciA*2^(3/24);
        end;
        if(strcmp(ton, '23') || strcmp(ton, 'h'))
            f = odvozujiciA*2^(4/24);
        end;
        if(strcmp(ton, '24') || strcmp(ton, 'h+'))
            f = odvozujiciA*2^(4/24);
        end;
    end;
    
    f = f*2^(oktava-1);

    x = 10*cos(2*pi*f*t+5/4*pi);
%     x
    %amplitudy = [5,4,3,5,6,2,1,5,3,4,5,5,5,6,4,2,2,3,4,5,4,6,2,1,1,3,4,2,1];
    %amplitudy = [2,3,4,0,2,3,4,0,2,3,4,0,2,3,4,0,2,3,4,0,2,3,4,0,2,3,4,0,2];
    %amplitudy = [7,8,7,7,1,5,4,2,8,3,9,3,7,4,4,0,2,3,4,5,2,3,4,0,0,3,0,0,0];
    %amplitudy = [6,2,6,0,5,3,6,0,4,3,4,0,2,3,4,0,2,3,4,0,2,3,4,0,2,3,4,0,2];
    %amplitudy = [30/6,35/6,0,10/6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    %amplitudy = [6,6,7,5,2,5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    %amplitudy = [10,1,2,1.5,0.5,0.3,0.1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    %amplitudy = [3,2,15,4,3,2,1,2,3,4,5,5,5,6,4,2,2,3,4,5,4,6,2,1,1,3,4,2,1];

    %nastaveni barvy zvuku
    if(strcmp(nastroj, 'beep'))
        amplitudy = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
        fazePi = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    end;
    if(strcmp(nastroj, 'brm'))
        amplitudy = [5,7,8,0,2,3,3,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
        fazePi = [1/2,3/8,2/8,3/2,0,-1/2,3/4,1/2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    end;
    if(strcmp(nastroj, 'krm'))
        amplitudy = [2,6,4,10/6,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
        fazePi = [1/2,-3/8,4/8,3/2,0,-1/2,3/4,1/2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    end;
    if(strcmp(nastroj, 'hola'))
        amplitudy = [5,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
        fazePi = [1/2,3/8,2/8,3/2,0,-1/2,3/4,1/2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    end;
    if(strcmp(nastroj, 'holala'))
        amplitudy = [2.5,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
        fazePi = [1/2,3/8,2/8,3/2,0,-1/2,3/4,1/2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    end;
    if(strcmp(nastroj, 'hejhola'))
        amplitudy = [2.9,5.8,2.3,4.8,1.6,1.9,1.6,0.6,0.3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
        fazePi = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    end;
    for i = 2:20
        f1 = i*f;
        x1 = amplitudy(i-1)*cos(2*pi*f1*t + fazePi(i-1)*pi);
        x = x + x1;
    end;

    % zeslabení zvuku
    x = x/50*dynamika;

    % vytvoøení nábìhu a dobìhu zvuku
    x = vytvorNabehDobeh(x);
    
    melodieOut = [melodie x];
end