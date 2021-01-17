grep "HTTP/1.1\" 200" apache.txt | awk 'BEGIN{
 IPMaks= "";
 jumlahDL = 0;
} {
 sub(/-[^:]*:/,"");
 sub(/:[0-9][0-9] [^"]*"[^"]*" [^ ]*/,"");
 total[$2] += $3;
 IP[$2, $1] += $3;
} END {
 for(jam in total) {
 IPMaks = "";
 jumlahDL = 0;
 for(pengguna in IP) {
 if((jam == substr(pengguna,1,5))&&(IP[pengguna] > jumlahDL)) {
 IPMaks = substr(pengguna,6);
 jumlahDL = IP[pengguna];
 }
 }
 printf("%s %d %s\n", jam, total[jam],IPMaks);
 }
}'| sort -k1 -n > laporan.txt