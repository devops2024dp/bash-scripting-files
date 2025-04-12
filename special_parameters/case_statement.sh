#!/bin/bash
case 12  in 
  1)
      #execute code if pattern1 matches the expression
     echo "your expression matched the FIRST Pattern"
    ;;
   2)
      # execute code if pattern2 matches the expression
     echo "your expression matched the 2ND Pattern"
    ;;
   3)
      # execute code if pattern3 matches the expression
    echo "your expression matched the 3RD  Pattern"
   ;;

  *)
  # execute code if no pattern matches the expression
   echo "your expression DID NOT match any pattern"
 ;;

esac
