#!/usr/bin/bash
#titulo:cordenadas cartesianas a polares y viceversa
#autor: Justin Santana, Laura Sofia Cortes, Juan Sebastian Sanchez
#version:0.0.01
pi=$(echo "scale=10; 4*a(1)" | bc -l) #se definen algunas variables
echo "Bienvenido, este programa de conversion de coordenadas(polares y cartesianas)"
echo "Comencemos"
s="1"
while [ $s -eq "1" ] #se repetira el script hasta que s sea 0
do
echo -e "Si desea pasar de coordenadas polares a cartesianas digite '1' si desea 
lo contrario digite '2'"
read v
if [ $v == "1" ] #un condicional que hara algo diferente dependiendo de que numero elijamos
then 
echo "usted eligio 'coordenadas polares a cartesianas' "
echo -e "Digite la magnitud del vector 'r'"
read pr
echo "Ahora elija si su angulo esta en radianes o en grados"
echo -e "1:radianes, 2:Grados"
read pa
    if [ $pa == "1" ]
    then 
    echo "Usted elogio radianes"
    echo -e "Ahora dijite el angulo"
    read r
    rg=$(echo "($r*180)/$pi" | bc -l)
    echo "su conversion a grados es:$rg" #operaciones necesarias para hallar su equivalente
    x=$(echo "$pr*c($r)" | bc -l)
    y=$(echo "$pr*s($r)" | bc -l)
    echo "la conversion de cordenadas polares a cartesianas es:x=$x y y=$y
    ($x,$y)"
    echo "Desea hacer otra conversion?"
    echo -e "1:si,2:no, digite el numero correspondiente"
read last
if [ $last == "1" ]
then
echo "Bienvenido"              #si lo desea puede terminar con el bucle
elif [ $last == "2" ]
then
s="0"
fi
    elif [ $pa == "2" ]
    then
    echo "Usted elogio grados"
    echo -e "Ahora dijite el angulo"
    read r
    rg=$(echo "($r*$pi)/180" | bc -l)
    echo "su conversion a radianes es:$rg"
     x=$(echo "$pr*c($rg)" | bc -l)
    y=$(echo "$pr*s($rg)" | bc -l)
    echo "la conversion de cordenadas polares a cartesianas es:x=$x y y=$y
    ($x,$y)"
    echo "Desea hacer otra conversion?"
echo -e "1:si,2:no, digite el numero correspondiente"
read last
if [ $last == "1" ]
then
echo "Bienvenido"
elif [ $last == "2" ]
then
s="0"
fi
    fi
elif [ $v == "2" ]
then 
echo "usted eligio 'coordenadas cartesianas a polares' "
echo -e "Digite la cordenada x"
read x
echo -e "Digite la cordenada y"
read y
m=$(echo "($x^2)+($y^2)" | bc -l)
mg=$(echo "sqrt($m)" | bc -l)
f=$(echo "$y/$x" | bc -l)
d=$(echo "a($f)" | bc -l)
echo "la magnitud r es:$mg"
echo "El angulo en rad es:$d"
dd=$(echo "($d*180)/$pi" | bc -l)
echo "El angulo en grados es:$dd"
echo "Desea hacer otra conversion?"
echo -e "1:si,2:no, digite el numero correspondiente"
read last
if [ $last == "1" ]
then
echo "Bienvenido"
elif [ $last == "2" ]
then          #fin del script del 
s="0"
fi
fi
done
