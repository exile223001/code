#!/bin/bash

#echo $1
#echo $2

cmd='git diff --raw'' '$1' '$2
echo $cmd

diff=`$cmd`
#echo $diff

filter=$(echo $diff|tr " " "\n")

txt="txt"
xml="xml"
> out.txt
> raw.txt
skill=""
ai=""
level=""
table=""
table_raw=""
table_except=""
table_client=""
table_to_reload="table_to_reload.txt"

skill_path="XProject/Assets/Resources/SkillPackage/"
ai_path="XProject/Assets/Resources/Table/AITree/"
level_path="XProject/Assets/Resources/Table/Level/"
table_path="XProject/Assets/Table/"
for x in $filter;do
    if [[ $x == *$txt ]] || [[ $x == *$xml ]];then
        #echo $x 
	echo $x >> raw.txt
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

echo "Skill "$skill >> out.txt
echo "AI "$ai >> out.txt

echo "" >> out.txt
echo -e "table:\n"$table_raw >> out.txt

echo "client table:" >> out.txt
echo -e $table_client >> out.txt
echo "not find table:" >> out.txt
echo -e $table_except >> out.txt
echo $table >> out.txt

echo "" >> out.txt
echo -e "Level:\n"$level >> out.txt

