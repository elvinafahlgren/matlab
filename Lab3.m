%% Hur man skriver matris, kolonnvektor samt radvektor
A=[1 4 7 10; 2 5 8 11; 3 6 9 12]
b=[1; 3; 5]
c=[0 2 4 6 8]

%% Uppgift 1 a)
clc
A=[1 4 7 10; 2 5 8 11; 3 6 9 12]
B=[4 5 6; 3 2 1; 1 1 1]
c=[1; 3; 5]
d=[0 2 4]

A(:,3)=c    % sätter s som 3:e kolonn i A 
B(2,:)=d    % sätter d com 2:a rad i B

%% Uppgift 1 b)
clc
A=[1 4 7 10; 2 5 8 11; 3 6 9 12]

% Låt 1:a och 3:e raden i A byta plats
a11=A(1,:);         % sparar 1:a raden i A
A(1,:)=A(3,:);      % sätter 3:e raden i A till 1:a raden i A
A(3,:)=a11          % sätter den sparade 1:a raden i A till 3:e raden

% Låt den 2:a och 4:e kolonnen byta plats
a12=A(:,2);         % sparar 2:a kolonnen i A
A(:,2)=A(:,4);       % sätter 4:e kolonnen i A till 2:a kolonnen i A
A(:,4)=a12          % sätter den sparade 2:a kolonnen i A till 4:e kolonnen

%% Uppgift 2
clc
b1=[4; 3; 1];
b2=[5; 2; 1];
b3=[6; 1; 1];

B=[b1 b2 b3]

%% Uppgift 3
clc
A=[10 7 8 7; 7 5 6 5; 8 6 10 9; 7 5 9 10]
A([1,2],[1,2])

%Försök återskapa A med delmatriserna A11, A12, A21 och A22 (vet ej)

%% Uppgift 4
clc
A=[11 4 3 7; 2 6 8 5; 9 12 1 10];
b=[3; 1; 5];
c=[4 2 8 0 6];

[antal_rader_b,antal_kolonner_b]=size(b)
[antal_rader_c,antal_kolonner_c]=size(c)

maximala=max(A)
[maximala,max_resp_platser]=max(A)
minimala=min(A)
[minimala,min_resp_platser]=min(A)

%% Uppgift 5
%Beräkna summan s = 1^2 + 2^2 + 3^2 + 4^2 + 5^2 
clc
t=1:5
p=t'.^2'
s=sum(p)


%% Uppgift 6
clc
A=[1 5 9; 2 6 10; 3 7 11; 4 8 12];
B=[4 5 6; 3 2 1; 1 1 1];
x=[1; 1; 1];
a=[-1 0 1];

Ax=A*x

Bx=B*x

AB=A*B

ax=a*x

xa=x*a

aB=a*B

% Beräkna produkten Ax även genom att skriva en egen programkod i Matlab. 
[m,n]=size(A);  % Antal rader
[o,p]=size(x)   % Antal kolonner
C=zeros(m,p);
    for i=1:m
        for j=1:p
            cij=0;
            for k=1:n
                cij=cij+A(i,k)*x(k,j);
            end
        end
        C(i,j)=cij;
    end
Ax=C

%% Uppgiift 7 a)
clc
A=[1 0 0; 0 1 0; 1 0 1];
B=[1 0 0; -2 1 0; 0 0 1];
C=[2 1 1; 4 1 0; -2 2 1];

% Kontrollera A(BC)=(AB)C
VL1=A*(B*C)
HL1=(A*B)*C

% KOntollera A(B+C)=AB+AC
VL2=A*(B+C)
HL2=A*B+A*C

% KOntrollera (B + C)A = BA + CA
VL3=(B+C)*A
HL3=B*A+C*A

%% Uppgiift 7 b)
A=[1 0 0; 0 1 0; 1 0 1];
B=[1 0 0; -2 1 0; 0 0 1];
%Vanligtvis är matrismultiplikation inte kommutativ. T.ex är AC~=CA och BC~=CB, men vad göller för AB och BA?
AB=A*B
BA=B*A
