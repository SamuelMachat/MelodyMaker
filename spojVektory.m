function [ vysledek ] = spojVektory(melodie1,melodie2)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
if(size(melodie1,2) == size(melodie2,2))
    
else
    if(size(melodie1,2) > size(melodie2,2))
        melodie2 = [melodie2 zeros(1,size(melodie1,2) - size(melodie2,2))];
        
    else
        melodie1 = [melodie1 zeros(1,size(melodie2,2) - size(melodie1,2))];
    end;
end;
vysledek = melodie1 + melodie2;
end

