#!/bin/bash

#echo $1
#echo $2

cd resource

cmd='git diff --raw'' '$1' '$2
echo $cmd

diff=`$cmd`
#echo $diff

filter=$(echo $diff|tr " " "\n")

txt="txt"
xml="xml"
file_out="../out.txt"
file_raw="../raw.txt"
> $file_out 
> $file_raw

skill=""
ai=""
level=""
table=""
table_raw=""
table_except=""
table_client=""
table_to_reload="../table_to_reload.txt"

skill_path="XProject/Assets/Resources/SkillPackage/"
ai_path="XProject/Assets/Resources/Table/AITree/"
level_path="XProject/Assets/Resources/Table/Level/"
table_path="XProject/Assets/Table/"
for x in $filter;do
    if [[ $x == *$txt ]] || [[ $x == *$xml ]];then
        #echo $x 
	echo $x >> $file_raw
	if [[ $x == *$skill_path* ]];then
		y=${x##*$skill_path}
		#echo $y	
		temp=$skill
		skill=$temp$y" "
	fi	

	if [[ $x == *$ai_path* ]];then
		y=${x##*$ai_path}
		#echo $y	
		temp=$ai
		ai=$temp$y" "
	fi	

	if [[ $x == *$level_path* ]];then
		temp=$level
		level=$temp$x"\n"
	fi	

	if [[ $x == *$table_path* ]];then
		y=${x##*$table_path}
		#echo $y	
		z=$(cat $table_to_reload | grep -w $y)	
		if [[ $z == ""  ]];then
			temp=$table_except
			table_except=$temp$x"\n"
		elif [[ $z == *"Client"* ]];then
			temp=$table_client
			table_client=$temp$x"\n"
		else
			#echo $z	
			zz=${z##*"-"}
			#echo $zz
			result=$(echo $table | grep -w $zz)	
			if [[ $result == ""  ]];then
				#echo $zz
				temp=$table
				table=$temp$zz" "		
			fi
		fi
		temp=$table_raw
		table_raw=$temp$x"\t\t\t"$z"\n"

	fi	

    fi
done

echo "Skill "$skill >> $file_out
echo "AI "$ai >> $file_out

echo "" >> $file_out
echo -e "table:\n"$table_raw >> $file_out

echo "client table:" >> $file_out
echo -e $table_client >> $file_out
echo "not find table:" >> $file_out
echo -e $table_except >> $file_out
echo $table >> $file_out

echo "" >> $file_out
echo -e "Level:\n"$level >> $file_out

