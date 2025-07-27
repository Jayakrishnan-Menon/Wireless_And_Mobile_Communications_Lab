% Create a table to display the SIR for the following cases: 1.
% i.n=3
% ii.N=5,7,19
% iii.No sectorization
% iv.60 sectorization
% v.120 sectorization

n = 3;
N1 = 5;
N2 = 7;
N3 = 19;
i1 = 6;
i2 = 1;
i3 = 2;
SIR11 = (((3.*N1).^(n/2))/i1);
SIR12 = (((3.*N1).^(n/2))/i2);
SIR13 = (((3.*N1).^(n/2))/i3);
SIR21 = (((3.*N2).^(n/2))/i1);
SIR22 = (((3.*N2).^(n/2))/i2);
SIR23 = (((3.*N2).^(n/2))/i3);
SIR31 = (((3.*N3).^(n/2))/i1);
SIR32 = (((3.*N3).^(n/2))/i2);
SIR33 = (((3.*N3).^(n/2))/i3);
Sectorization = ['No sectorization';"60 degree
sectorization";"120 degree" + ...
 " sectorization";"No sectorization";"60 degree
sectorization";"120 degree " + ...
 "sectorization";"No sectorization";"60 degree
sectorization";"120 degree sectorization"];
SIRDb =
[SIR11;SIR12;SIR13;SIR21;SIR22;SIR23;SIR31;SIR32;SIR33];
N = [N1;N1;N1;N2;N2;N2;N3;N3;N3];
t1 = table(Sectorization,N,SIRDb)
