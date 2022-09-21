function [y] = vytvorNabehDobeh(x)
    %vytvorit nabeh
    fs = 4000*16;
    T = 0.1;
    t = 0:1/fs:T-1/fs;
    f = 5;
    nabeh = -1/2*cos(2*pi*f*t) + 1/2;

    %vytvorit dobeh
    fs = 4000*16;
    T = 0.1;
    t = 0:1/fs:T-1/fs;
    f = 5;
    dobeh = 1/2*cos(2*pi*f*t) + 1/2;

    %upraveni zvuku na to, aby mel nabeh a dobeh
    y = x;
     y(1:size(nabeh,2)) = y(1:size(nabeh,2)).*nabeh(1:size(nabeh,2));
%      y(1:size(nabeh,2)) = nabeh(1:size(nabeh,2));
      y(size(y,2)-size(dobeh,2)+1:size(y,2)) = y(size(y,2)-size(dobeh,2)+1:size(y,2)).*dobeh(1:size(dobeh,2));


end

