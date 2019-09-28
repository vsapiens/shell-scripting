BEGIN{
    sum = 0;
    ind = 1;}
{   
    avg[ind] = ($2+$3+$4+$5+$6)/5;
    sumAvg += avg[ind];
    ind++;
}
END {
    sumAvg = 0;
    average = 0;
    SQavg = 0;

    for(i = 1; i<=5;i++){
        sumAvg += avg[i];
        print avg[i];
    } 
    average = sumAvg/5;

    for(i = 1; i<=5;i++){
       SQavg += (avg[i]-average)^2;
    }
    
    print sqrt(SQavg/5)
}
