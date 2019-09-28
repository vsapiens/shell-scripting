BEGIN{}
{   
    if( $1 >= $2){
        print "Not possible"
    }
    else{
        b = sqrt($2^2 - $1^2);
        print b,$1*b;
    }
}
END {}
