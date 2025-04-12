#!/bin/bash
#=============== DYNAMIC BACKUP STARTS FROM HERE:
backup() {
	echo "backing up  our file... at midnight ....."
	echo "current working directory is "
	echo "$1 is backing up file $2"

	old_ifs=$IFS #old ifs is a space
	IFS=","

	echo "Hey $1, you have passed $# arguments to the script"
	echo "These arguments are: $@"
	echo "These are the arguments as one word: $*"
	SCRIPT_PATH=$(realpath "$2")
	SCRIPT_NAME=$(basename "$2")

	cp "${SCRIPT_PATH}" ~/"${SCRIPT_NAME}-backup"

	echo "$2 has successfully been backed-up to location: ~/${SCRIPT_NAME}-backup "
	IFS=$old_ifs
       return 45
}



#==================== READ CODE STARTS FROM HERE 
provision_servers(){
	read -p "Enter a region you want to provision servers into: " region

	case $region  in
  	"eu-west-2")
      	#execute code if pattern1 matches the expression
     	echo "your expression/region ($region) matched the FIRST Pattern"
    	 echo "And we are provisioning 20 instances.."
     	df -h
    	;;
  	 "us-east-1")
     	 # execute code if pattern2 matches the expression
     	echo "your expression/region (${region})  matched the 2ND Pattern"
     	echo "And we are provisioning 100 instances .."
     	free
    	;;
   	"sa-central-1")
      	# execute code if pattern3 matches the expression
    	echo "your expression/region ($region)  matched the 3RD  Pattern"
    	echo "And we are provisioning 9 instances"
    	uptime
   	;;

  	*)
 	 # execute code if no pattern matches the expression
   	echo "your expression/region (${region}) DID NOT match any pattern"
   	echo "so we are not provisioning any resources"
  	 uname -a
 	;;

	esac
}


#================== SELECT CODE STARTS FROM HERE
create_file(){
	select  ext in .jpg .png .txt .tf quit

	do
 		filename="filefromcase"
 
 		case $ext  in 
  			*.jpg | *.png)
      			#execute code if pattern1 matches the expression
     			echo "your extension is $ext. and we are creating a file for you"
      			touch ${filename}${ext}
      			ls -l 
     			echo "==============================="
    		      ;;
   	*.txt)
     	 # execute code if pattern2 matches the expression
     	echo "your extension is $ext. and we are creating a file for you"
      	touch ${filename}${ext}
      	ls -l
     	echo "==============================="
    	;;
   	*.tf)
      	# execute code if pattern3 matches the expression
    	 echo "your extension is $ext. and we are creating a file for you"
      	touch ${filename}${ext}
      	ls -l
     	echo "==============================="
   	;;

     	quit)
      	# execute code if pattern3 matches the expression
     	echo "quitting program ......."
      	break
       	;;

 	 *)
  	# execute code if no pattern matches the expression
   	echo "our script DOES NOT  create a file with the exteions you entered"
 	;;

	esac
	done
}

#backup $1 $2 
#provision_servers

greetings(){
  psi78  "hello $1"

 if [[ $? -ne 0 ]]; then
  return 53
 fi 
}

greetings $1

echo $?
