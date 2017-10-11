
sed -i 's/\\/\//g' ms_reload.txt
sed -i 's/\\/\//g' world_reload.txt

awk -F ' ' '{ s=$0; sub(/^[ \t\r\n]+/, "", s); sub(/[ \t\r\n]+$/, "", s); if (s != "") printf("./gmtool gmtool_conf.xml msreload %s\n", s)}' ms_reload.txt > hot_reload.sh
awk -F ' ' '{ s=$0; sub(/^[ \t\r\n]+/, "", s); sub(/[ \t\r\n]+$/, "", s); if (s != "") printf("./gmtool gmtool_conf.xml worldreload %s\n", s)}' world_reload.txt > hot_reload_cross.sh

chmod a+x hot_reload.sh
chmod a+x hot_reload_cross.sh

./hot_reload.sh
./hot_reload_cross.sh
