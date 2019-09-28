BEGIN{str=""
ORS=" "
}{
    for(x=1;$x;++x)
    {
        if(str == "")
        {
            str=$x;
        }
        else if(str == $x)
        {
            print $2;
        }
        else if(length($x) >= 4)
        {
            str = $x
            print "\n",$x,": ",$2;
        }
            
    }
}
END{print "\n"}
#cat palabras.txt | awk 'BEGIN{ count=0}{for(x=1;$x;++x){count++;}}END{print count}' && tr ' ' '\n' < novela.txt | sort | uniq -c | wc -l


#cat novela.txt | awk 'BEGIN{}{for(x=1;$x;++x){print $x,x}}'| tr -d "[:punct:]" | tr " " "\n" | tr -d "¡" | tr -d "¿"| tr -d "0-9" | tr "A-Z" "a-z" | sort

#cat novela.txt | tr -d "[:punct:]" | tr -d "¡" | tr -d "¿"| tr -d "0-9" | tr "A-Z" "a-z"| awk 'BEGIN{}{for(x=1;$x;++x){print $x,x}}' | sort


#awk 'BEGIN{}{for(x=1;$x;++x){print $x,x}}' novela.txt|  tr -d "[:punct:]" | tr " " "\n" | tr -d "¡" | tr -d "¿" | tr "A-Z" "a-z" | sort | uniq
#awk -f novela2.awk novela.txt|  tr -d "[:punct:]" | tr -d "¡" | tr -d "¿" | tr "A-Z" "a-z" | sort | awk 'BEGIN{last=""}{for}'


