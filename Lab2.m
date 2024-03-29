%% Uppgift 1
if a<b
    c=a
else
    c=b
end

%% Uppgift 2a)
s=0;
i=0;
while round(s,4) ~= round((pi/4),4)
    s = s + ((-1)^i)/(2*i+1);
    i=i+1;
end
s
i

%% Uppgift 2b)
s=0;
n=1000;
for i=0:1:n
    s = s + ((-1)^i)/(2*i+1);
end
s

%% Uppgift 3
omkrets=polylen_fun([0 1/2],[0 sqrt(3)/2]) % funktion i annan fil

%% Uppgift 4
%säkert fel, men funkar:)
subplot(1,2,1)
axis([0 1 0 1]), hold on
[x,y]=ginput(1);
plot(x,y,'-o')
while 1
    [xi,yi,knapp] = ginput(1);
    if knapp ~=1
        break
    end
    x=[x; xi]; y=[y; yi];
    plot(x(end-1:end),y(end-1:end),'o-')
end
hold off
x=[x; x(1)]; y=[y; y(1)];

subplot(1,2,2)
fill(x,y,'g')
axis([0 1 0 1])


%% Exempel 2
s=0
for i=1:2:13
    s=s+i;
end
s

%% Exempel 3
n=length(x);
L=0;
for i=1:n-1
    L=L+sqrt((x(i+1)-x(i))^2+(y(i+1)-y(i))^2);
end
L

%% Exempel 4
c=2;
tol=1e-16;
x=c;
d=1;
while d>tol         % så länge d > tol görs följande
    xny=(x+c/x)/2;
    d=abs(xny-x);
    x=xny;
end
format long
x

%% Exempel 6
f=@(x)cos(x)-exp(-0.5*x.^2).*sin(7*x);
x=linspace(-2*pi,2*pi);
plot(x,f(x))

%% Exempel 7
subplot(1,2,1)
[x,y]=ginput(3);        % Triangelns 3 hörn, x och y blir kolonner
x=[x; x(1)];            % Vi sluter polygontåget, så alla sidor ritas
y=[y; y(1)];
plot(x,y,"-o")
axis([0 1 0 1])
text(0.1,0.3,"ABC")     % Koordinatplacerad text på grafen

subplot(1,2,2)
fill(x,y,"g")
axis([0 1 0 1])
gtext("DEF")            % Med markören placerad text på grafen

%% printex1
antal=input("Ange antal kast: ");

%% printex2
svar=input("Hej, hur mår du?\n",'s');

%% printex3
disp(svar)

%% printex4
disp(sprintf("Pi =%10.7f",pi))

