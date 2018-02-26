t0 = (1:0.1:8)';
n = 9;
PFA9clt = 1-normcdf(sqrt(n)*((t0/3)-1));
PM9clt = normcdf(sqrt(n)*((t0/6)-1));
n = 16;
PFA16clt = 1.0-normcdf(sqrt(n)*((t0/3)-1));
PM16clt = normcdf(sqrt(n)*((t0/6)-1));
plot(PFA9clt , PM9clt , PFA16clt , PM16clt);
