
vNumCount=$((0))
vNumBuffer=""
vMessageBuffer=""

while [ 1 ]
do
  read -s -n 1 vChar
  echo "Buffer $vChar"
  case $vChar in
    "1")
      vNumCount=$(( $vNumCount + 1 ))
      vNumBuffer="$vNumBuffer""$vChar"
     ;;
    "2")
      vNumCount=$(( $vNumCount + 1 ))
      vNumBuffer="$vNumBuffer""$vChar"
     ;;
    "3")
      vNumCount=$(( $vNumCount + 1 ))
      vNumBuffer="$vNumBuffer""$vChar"
     ;;
    "4")
      vNumCount=$(( $vNumCount + 1 ))
      vNumBuffer="$vNumBuffer""$vChar"
     ;;
    "5")
      vNumCount=$(( $vNumCount + 1 ))
      vNumBuffer="$vNumBuffer""$vChar"
     ;;
    "6")
      vNumCount=$(( $vNumCount + 1 ))
      vNumBuffer="$vNumBuffer""$vChar"
     ;;
    "7")
      vNumCount=$(( $vNumCount + 1 ))
      vNumBuffer="$vNumBuffer""$vChar"
     ;;
    "8")
      vNumCount=$(( $vNumCount + 1 ))
      vNumBuffer="$vNumBuffer""$vChar"
     ;;
    "9")
      vNumCount=$(( $vNumCount + 1 ))
      vNumBuffer="$vNumBuffer""$vChar"
     ;;
    "0")
      vNumCount=$(( $vNumCount + 1 ))
      vNumBuffer="$vNumBuffer""$vChar"
     ;;
    *)
      vNumCount=0
      vNumBuffer=""
     ;;
  esac
  
  if [ $vNumCount = "10" ] 
  then
    vNumCount=0
    vMessageBuffer=""
    vLoop="True"
    while [ $vLoop = "True" ]
    do
      read -s -n 1 vChar
      echo "Message $vChar"

      if [[ $vChar != *[!\ ]* ]]; then
            vMessageBuffer="$vMessageBuffer"" "
      fi

      vMessageBuffer="$vMessageBuffer""$vChar"
      case $vChar in
        "b")
          if [ "$vBURP" = "" ] 
            then
              vBURP="$vBURP""B"
            fi 
          ;;
        "u")
          if [ "$vBURP" = "B" ] 
            then
              vBURP="$vBURP""U"
            fi 
          ;;
        "r")
          if [ "$vBURP" = "BU" ] 
            then
              vBURP="$vBURP""R"
            fi 
          ;;
        "p")
          if [ "$vBURP" = "BUR" ] 
            then
              vBURP="$vBURP""P"
              vLoop="False"
            fi 
          ;;
        *)
          vBURP=""
          ;; 
      esac
    done
    vFinalMessage=${vMessageBuffer%????}
    echo "Please send email to $vNumBuffer@txt.att.net that says: $vFinalMessage "
    vNumBuffer=""
  fi


done


