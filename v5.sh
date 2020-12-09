### Jangan Di ganti ya bangsat!!!
### bikinya susah


#Code Warna #####################################
p="\033[39;1m";a="\033[30;1m";m="\033[31;1m";h="\033[32;1m";k="\033[33;1m"
b="\033[34;1m";cy="\033[1;36m";c="\033[35;1m";pu="\033[36;1m";n="\033[0m"
s=sleep 1
loc=/sdcard/termux/v5


logo(){
printf "${p}
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

 m m     m m		 ccc ll   ii   ccc  ii  kk   BOT V5
m   m   m   m		cc   ll   ii  cc    iikk
m    m m    m		cc   ll   ii  cc    iik
m     m     m Juli	 Ccc llll ii   ccv  ii kkk

${k}KEEP ALWAYS YOUR SMILE AND KEEP CALM !!
${p}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
"
}

#back #################################
back(){
printf "\n${k}ᴘʀᴇss ᴀɴʏ ᴋᴇʏ ᴛᴏ ᴄᴏɴᴛɪɴᴜᴇ !" bck
read bck
if [ $bck ];then
sh ~/v5.sh
else
sh ~/v5.sh
fi
}
#############################
pil1()
{
printf "${cy}
${b}pilih multi${p}: " cm
read cm
if [ $cm ];then
cd /sdcard/Termux/v5/$cm.multi
fi
}
#######################################
comm()
{
printf "${cy}© ${h}choice : " a
read a
if [ $a = M ] || [ $a = m ];then
printf "${k}Input name files or etc : " a2
read a2
printf "${m}move to multi : " move
read move
mv $a2 /sdcard/termux/v5/$move.multi/session
printf "${h}success moved ${a2}\n"
elif [ $a = C ] || [ $a = c ];then
printf "${k}Input name files or etc : " a3
read a3 
printf "${m}copy to multi : " $copy
read copy
cp -rf $a3 /sdcard/termux/v5/$copy.multi/session
printf "${h}success copied ${a3}\n"
elif [ $a = D ] || [ $a = d ];then
printf "${k}Input name files or etc : " a1
read a1
rm $a1
printf "${h}success deleted ${a1}\n"
list
elif [ $a = X ] || [ $a = x ];then
multi
else
printf "${m}try again"
multi
fi
}
#pilih################################
listt(){
printf "${k}\n[${p}session list${k}]  
${b} pilih multi${p}: " sesi
read sesi
if [ $sesi ];then
cd /sdcard/termux/v5/$sesi.multi ;
clear
printf "${b} Berikut List Session ${h}(${p}$sesi.multi${h})
${cy}<═════════════════════════════>
"
ls session | lolcat
printf "${cy}<═════════════════════════════>\n"
printf " ${p} Hati Hati dengan perintah di bawah ini !
__________________________________________________________________________
 ${h}(${p}D${h})${m} Hapus ${h}(${p}M${h})${k} Pindah ${h}(${p}C${h})${k} Salin ${p}(${cy}X${p})kembali (${cy}menu${p})
__________________________________________________________________________
"
cd /sdcard/termux/v5/$sesi.multi
cd session
comm
fi
}
#tambah folder ##################################
tambah_f()
{
printf "${b}massukan nama multi${p}: " namaa
read namaa
if [ $namaa ];then
cd /sdcard/termux/v5
mkdir $namaa.multi
cd $namaa.multi
unzip ~/v5.zip
printf "${h}Done..\n ${b}${namaa}.multi${h} Di Tambahkan "
fi
}

#tambah nomer ####################################
tambah()
{
printf "${b}pilih multi${p}: " adds
read adds
if [ $adds ];then
cd $adds.multi
printf "${b}massukan Nomer ${p}: " nom
read nom
sed -i "1i${nom}" Numbers.txt
printf "succes add number ${nom}\n"
printf "request verifikasi";sleep 1
cd /sdcard/termux/v5/$adds.multi
python reff.py $nom
printf "${h}Succesfull !!"
else
printf "${m}Failed add number!!"
fi
}

#nano editor #####################################
nano1()
{
printf "pilih multi: " nn
read nn
if [ $nn ];then
cd $nn.multi
nano Numbers.txt
else
printf "nano terhenti";sleep 1
fi
}

reff(){
clear
cd $loc
ls|lolcat
printf "\ninput location session? :> " lc
read lc
printf "Input Number (+1xxx) :> " no
read no
cd $loc/$lc.multi
python reff.py $no
printf "add to list.txt [Y] or [N] :> " Q
read Q
if [ $Q = Y ] || [ $Q = y ];then
cd $loc/$lc.multi
sed -i "1i${no}" Numbers.txt
printf "${cy}${no} ${h}Berhasil di tambahkan ${k} >> ${cy} ${lc}.multi"
elif [ $Q = N ] || [ $Q = n ];then
printf "Nomer ${no} tidak kami massukan ke list anda!! "
else
printf "${m} ERRORRRR !! "
fi
}
#menu multi All clickbot #########################
multi()
{
clear

logo
printf "${h} 			-= ${p}Tools Multi Clickbot ${h}=- \n

${k}Silahkan Pilih multi anda !!
Berikut Daftar List Multi Bot\n"
cd $loc
printf "${p}•${b} List ${p}•${cy}━━━━━━━━━━━━━━\n"
	ls | lolcat
printf "${cy}━━━━━━━━━━━━━━${p}• ${b}Multi ${p}•


				${k}Info Command !!
${h}	╔══════════════════════════════════════════════════════════════╗
        ${k}- nano		${h}( ${p}untuk edit nano editor${h} )
        ${k}- folder	${h}( ${p}untuk menambahkan folder multi baru${h} )
	${k}- session	${h}( ${p}untuk melihat list session${h} )
        ${k}- reff		${h}( ${p}Tools auto refferall and session maker${h} )
${h}	╚══════════════════════════════════════════════════════════════╝
${k}Gunakan Perintah Ini untuk :
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
${h}(${p}D${h})${m} Hapus ${h}(${p}M${h})${k} Pindah ${h}(${p}C${h})${k} Salin
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
\n
${p}© ${cy}choice :${p} " pill
read pill
if [ $pill = all ];then
cd $loc/all
python clickbotsNopassV5.py
back
elif [ $pill = nano ];then
nano1
sh ~/v5.sh
elif [ $pill = folder ];then
tambah_f
back
elif [ $pill = session ];then
listt
back
elif [ $pill = tmux ];then
tmux
elif [ $pill = reff ];then
reff
back
elif [ $pill = M ] || [ $pill = m ];then
printf "${k}Input name files or etc : " a2
read a2
printf "${m}move to : " move
read move
mv $move
printf "${h}success moved ${a2} to ${move}\n"
back
elif [ $pill = C ] || [ $pill = c ];then
printf "${k}Input name files or etc : " a3
read a3
printf "${m}copy to : " $copy
read copy
cp $copy
printf "${h}success copied ${a3} to ${copy}\n"
back
elif [ $pill = D ] || [ $pill = d ];then
printf "${k}Input name files or etc : " a1
read a1
rm -rf $a1
printf "${m}deleted ${a1} :("
back
elif [ $pill ];then
cd $loc
cd $pill.multi
python clickbotsNopassV5.py
back
else
printf "\n\n${k}type something for example 1 (for multi 1), etc .." sleep 2
multi
clear
fi
}
#List Perintah #####
sh .install.sh
multi
