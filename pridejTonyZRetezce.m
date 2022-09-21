function [ melodie ] = pridejTonyZRetezce( melodie, melodieStr,komorniA,ladeni1,nastroj1,tempo,fs,dynamika )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
alpha= ' ';
abeceda = 'abcdefghijklmnopqrstuvwxyz+#';
pocetNot = sum(ismember(lower(melodieStr),alpha)) + 1;

start = 1;

for iii = 1:pocetNot-1
    konec = size(melodieStr,2)
    melodieStrNew = melodieStr(1,start:konec)%'2c1 1d1 0.5c2 1.5d2'%melodieStr(start:size(melodie,1));
    size(melodieStrNew,2)
    nums = [];
    %A = sscanf(melodieStrNew,'%s')  
    nums(1,:) = sscanf(melodieStrNew(1,:), '%f%*s%f', [1, inf])
    %B = sscanf(melodieStrNew(1,:), '%*f%s%*d', [1, inf])


    for index = start:size(melodieStrNew,2)
            if ismember(lower(melodieStrNew(index)),alpha)
                break;
            end;
    end;
    startOddilu = 1;
    for index = startOddilu:size(melodieStrNew,2)
            if melodieStrNew(index) == ' '
                % a = melodieStr(startOddilu:index-1));
                start = start + index;
                break;
            end;

    end;
    zacatek = 0;
    for indexNoty = 1:size(melodieStrNew,2)
        if ismember(lower(melodieStrNew(indexNoty)),abeceda) && zacatek == 0
             zacatek = indexNoty   
        end;
        if not(ismember(lower(melodieStrNew(indexNoty)),abeceda)) && zacatek ~= 0
            break;
        end;
    end;
    
    % vezmu string a pojedu, dokud nenajdu pismeno
    % to, co je pøed písmenem, nastavim jako délku noty (vymažu pøípadnì
    % mezeru pøed)
%     delka = nums(1,1);
    delka = str2double(melodieStrNew(1,1:zacatek-1))*4
    % písmeno nastavim jako ton
    ton = melodieStrNew(1,zacatek:indexNoty-1)
    % cislo za tonem nastavim jako oktavu
    %nums2(1,:) = sscanf(melodieStrNew(1,indexNoty:size(melodieStrNew,2), '%f'))
    if(melodieStrNew(1,indexNoty:indexNoty+1) == '1 ')
        oktava = 1
    else
        oktava = 2
    end;
    
    % pak do melodie pøidám danej tón
    melodie = pridejTon(melodie,ton,oktava,delka,komorniA,ladeni1,nastroj1,tempo,fs,dynamika);
    % pak pokud je konec stringu, tak už nic neètu
end;

end

