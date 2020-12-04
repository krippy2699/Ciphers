#!/bin/bash

#ROT13 - Encoding
rote() 
{
echo "Read or Write(R/W):"
read readorwrite

#Encoding a file
if [[ "$readorwrite" == "R" || "$readorwrite" == "r" ]]; then
echo "Enter filename: "
read filename
 if [ -f "$filename" ]; then
  for word in `cat $filename`
  do
  fileconversion=$( echo "$word" | tr -s "a-zA-Z" "n-za-mN-ZA-M")
  echo "*ROT13 conversion: $fileconversion" 
  echo "$fileconversion" | cat > outfile.txt
  done
 else 
 echo "File does not exist"
 fi

#Encoding a text
elif [[ "$readorwrite" == "W" || "$readorwrite" == "w" ]]; then
echo "Enter text: "
read text
textconversion=$(echo "$text" | tr -s "a-zA-Z" "n-za-mN-ZA-M")
echo "*ROT13 conversion: $textconversion"
echo "$textconversion" | cat > outfile.txt 

#Invalid Input
else
echo "Inalid Input ! Back to the main menu"
fi
echo "#####################################"
echo -e " "
}


#ROT13 - Decoding
rotd() 
{

echo "Read or Write(R/W):"
read readorwrite

#Decoding a file
if [[ "$readorwrite" == "R" || "readorwrite" == "r" ]];then
echo "Enter filename: "
read filename
if [ -f "$filename" ]; then
for word in `cat $filename`
do 
fileconversion=$(echo "$word" | tr -s "n-za-mN-ZA-M" "a-zA-Z")
echo "*ROT13 conversion: $fileconversion"
echo "$fileconversion" | cat > outfile.txt
done
else
echo "File does not exist !"
fi

#Decoding a text
elif [[ "$readorwrite" == "W" || "$readorwrite" == "w" ]]; then
echo "Enter text: "
read text
textconversion=$(echo "$text" | tr -s "n-za-mN-ZA-M" "a-zAZ")
echo "*ROT13 conversion: $textconversion"
echo "$textconversion" | cat > outfile.txt
#Invalid input
else
echo "Invalid Input ! Back to the main menu"
fi
echo "#########################################"
echo -e " "
}



#Ceaser's Cipher- Encoding
cce()
{

echo "Read or Write(R/W):"
read readorwrite
echo "How many places would you like to shift"
read places

#Encoding a text message using Ceaser's Cipher
if [[ "$readorwrite" == "W" || "$readorwrite" == "W" ]];then
echo "Enter text:"
read text
     
     if [ "$places" -eq 1 ]; then
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "b-zaB-ZA")
     echo "CC conversion with 1 shift: $textconversion"
     echo "$textconversion" | cat > outfile.txt
     elif [ "$places" -eq 2 ];then     
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "c-za-bC-ZA-B")
     echo "CC converion with 2 shifts: $textconversion"
     echo "$textconversion" | cat > outfile.txt
     elif [ "$places" -eq 3 ]; then
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "d-za-cD-ZA-C")
     echo "CC conversion with 3 shifts: $textconversion"
     echo "$textconversion" | cat > outfile.txt
     elif [ "$places" -eq 4 ];then     
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "e-za-dE-ZA-D")
     echo "CC converion with 4 shifts: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 5 ]; then
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "f-za-eF-ZA-E")
     echo "CC conversion with 5 shift: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 6 ];then     
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "g-za-fG-ZA-F")
     echo "CC converion with 6 shifts: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 7 ]; then
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "h-za-gH-ZA-G")
     echo "CC conversion with 7 shift: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 8 ];then     
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "i-za-hI-ZA-H")
     echo "CC converion with 8 shifts: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 9 ]; then
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "j-za-iJ-ZA-I")
     echo "CC conversion with 9 shifts: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 10 ];then     
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "k-za-jK-ZA-J")
     echo "CC converion with 10 shifts: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 11 ]; then
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "l-za-kL-ZA-K")
     echo "CC conversion with 11 shift: $textconversion"
     echo "$textconversion" | cat > outfile.txt
     elif [ "$places" -eq 12 ];then     
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "m-za-lM-ZA-L")
     echo "CC converion with 12 shifts: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 13 ]; then
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "n-za-mN-ZA-M")
     echo "CC conversion with 13 shift: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 14 ];then     
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "o-za-nO-ZA-N")
     echo "CC converion with 14 shifts: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 15 ]; then
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "p-za-oP-ZA-O")
     echo "CC conversion with 15 shift: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 16 ];then     
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "q-za-pQ-ZA-P")
     echo "CC converion with 16 shifts: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 17 ]; then
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "r-za-qR-ZA-Q")
     echo "CC conversion with 17 shift: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 18 ];then     
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "s-za-rS-ZA-R")
     echo "CC converion with 18 shifts: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 19 ]; then
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "t-za-sT-ZA-S")
     echo "CC conversion with 19 shift: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 20 ];then     
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "u-za-tU-ZA-T")
     echo "CC converion with 20 shifts: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 21 ]; then
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "v-za-uV-ZA-U")
     echo "CC conversion with 21 shift: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 22 ];then     
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "w-za-vW-ZA-V")
     echo "CC converion with 22 shifts: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 23 ]; then
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "x-za-wX-ZA-W")
     echo "CC conversion with 23 shifts: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 24 ];then     
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "y-za-xY-ZA-X")
     echo "CC converion with 24 shifts: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     elif [ "$places" -eq 25 ]; then
     textconversion=$(echo "$text" | tr -s "a-zA-Z" "z-aZ-A")
     echo "CC conversion with 25 shifts: $textconversion"
     echo "$textconversion" | cat > outfile.txt 
     else
     echo "The values shifted cannot be greater than 25 ! Back to the main menu"
     fi

#Encoding text from a file using Ceaser's Cipher
elif [[ "$readorwrite" == "R" || "$readorwrite" == "r" ]];then
echo "Enter filename: "
read filename
   if [[ -f "$filename" && "$places" -eq 1 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "b-zaB-ZA")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt
     done
   elif [[ -f "$filename" && "$places" -eq 2 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
      echo "$fileconversion" | cat > outfile.txt 
     done
   elif [[ -f "$filename" && "$places" -eq 3 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt
     done
   elif [[ -f "$filename" && "$places" -eq 4 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt 
     done
   elif [[ -f "$filename" && "$places" -eq 5 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt
     done
   elif [[ -f "$filename" && "$places" -eq 6 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt
     done
   elif [[ -f "$filename" && "$places" -eq 7 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt 
     done
   elif [[ -f "$filename" && "$places" -eq 8 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt 
     done
   elif [[ -f "$filename" && "$places" -eq 9 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt
     done
   elif [[ -f "$filename" && "$places" -eq 10 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt 
     done
   elif [[ -f "$filename" && "$places" -eq 11 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt 
     done
    elif [[ -f "$filename" && "$places" -eq 12 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
      echo "$fileconversion" | cat > outfile.txt
     done
   elif [[ -f "$filename" && "$places" -eq 13 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt
     done
   elif [[ -f "$filename" && "$places" -eq 14 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt 
     done
   elif [[ -f "$filename" && "$places" -eq 15 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt
     done
   elif [[ -f "$filename" && "$places" -eq 16 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt 
     done
    elif [[ -f "$filename" && "$places" -eq 17 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt
     done
   elif [[ -f "$filename" && "$places" -eq 18 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt
     done
   elif [[ -f "$filename" && "$places" -eq 19 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt
     done
   elif [[ -f "$filename" && "$places" -eq 20 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt 
     done
   elif [[ -f "$filename" && "$places" -eq 21 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt
     done
    elif [[ -f "$filename" && "$places" -eq 22 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt
     done
   elif [[ -f "$filename" && "$places" -eq 23 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt
     done
   elif [[ -f "$filename" && "$places" -eq 24 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt 
     done
   elif [[ -f "$filename" && "$places" -eq 25 ]];then
     for word in `cat $filename`
     do 
     fileconversion=$(echo "$word" | tr -s "a-zA-Z" "c-zabC-ZAB")
     echo "*ROT13 conversion: $fileconversion"
     echo "$fileconversion" | cat > outfile.txt 
     done
   elif [[ -f "$filename" && "$places" > 25 ]];then
     echo "The value for places cannot be greater than 25 ! Back to the main menu"
   else
     echo "File does not exist !"
     fi

#For invalid input
else
echo "Invalid Input ! Back to the main menu"
fi 

echo "#########################################"
echo -e " "
}







echo "##### Welcome to the Menu #####"
loopstatus=true

while [ $loopstatus ]
 do

echo "##### User in Main Menu ##############"
echo "Enter 1 - to choose the ROT13 Cipher"
echo "Enter 2 - to choose the Ceaser's Cipher"
echo "Enter 3 - to quit"
echo "Enter an option: "
read option
echo "Enter Encode or Decode or Quit(E/D/Q):"
read enorde
echo "#######################################"


# ROT13 cipher - Encoding 
if [[ "$option" -eq 1 && "$enorde" -eq "E" ]];
then 
echo -e " "
echo "############# ROT13 Cipher ############" 
rote

#ROT13 cipher - Decoding
elif [[ "$option" -eq 1 && "$enorde" -eq "D" ]];
then echo -e " "
echo "############# ROT13 Cipher ###############"
rotd


# Ceaser's Cipher - Encoding
elif [[ "$option" -eq 2 && "$enorde" -eq "E" ]];
then
echo -e " "
echo "############ Ceaser's Cipher ##############"
cce

#Ceaser's Cipher - Decoding
elif [[ "$option" -eq 2 && "$enorde" -eq "D" ]];
then
echo -e " "
echo "########### Ceaser's Cipher ###############"
cce


# Qutting
elif [[ "$option" -eq 3 && "$enorde" -eq "Q" ]];
then
echo -e " "
echo "##### User now quitting ##### "
echo " BYE ! "
break;

# Invalid Input
else
echo "##### Please enter valid input from [1,2,3] and [E,D] #####"
fi
done
