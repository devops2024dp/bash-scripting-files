#!/bin/bash
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
