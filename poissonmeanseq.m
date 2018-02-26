function M=poissonmeanseq(n)
x=poissrnd(1,[n 1]);
nn=(1:n)';
M=cumsum(x)./nn;
r=(1.65)./sqrt(nn);
plot(nn,M,nn,M+r,nn,M-r);
end