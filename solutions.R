# 1
# ax^2+bx+c=0
a <- readline(prompt="Enter a number: ")
b<- readline(prompt="Enter a number: ")
c<- readline(prompt="Enter a number: ")
a=as.numeric(a)
b=as.numeric(b)
c=as.numeric(c)
if (a!=0){
  d=b^2-4*a*c
  if(d>0){
    x1=(-b+sqrt(d))/(2*a)
    x2=(-b-sqrt(d))/(2*a)
    print(x1,x2)
    
  }else if(d==0){
    x0=(-b)/(2*a)
    x0
  }else{
    print("αδύνατη")
  }
}else{
  if(b!=0){
    x=-c/b
    x
  }else if(b==0 && c==0){
    print("αόριστη")
  }else{
    print("αδύνατη")
  }
}

# 2
rizes=c()
k=0
for (x in seq(-10^6,10^6,0.5)){
  f=3*x^4-2*x^3+2*x-1
  if (abs(f)<=0.05){
    k=k+1
    rizes[k]=x
    print(x)
  }
}
k

#3
set.seed(123)
a=sample(1:20,150,replace = TRUE)
b=c()
for(i in 1:20){b[i]=0}
for (i in 1:150){
  b[a[i]]=b[a[i]]+1
  
}
cat(b)

# 4

res<-function(a){
  if (a==0){
    print("1")
  }
  else{
    p=1
    for (i in 1:a){
      p=p*i
      
    }
  }
  return(p)
}

# 5
apply(matrix(sample(1:3,100,replace=TRUE),25,4),2,table)

# 6
pms=c(rnorm(20))
theseis=sample(1:20,7,replace = FALSE)
pms[theseis]=NA
pms=matrix(pms,4,5)
pms[theseis]=mean(pms,na.rm=TRUE)
