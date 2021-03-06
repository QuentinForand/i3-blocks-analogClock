#!/bin/bash

declare -A face=(
  ["00"]=$"\U1F55B"
  ["10"]=$"\U1F550"
  ["20"]=$"\U1F551"
  ["30"]=$"\U1F552"
  ["40"]=$"\U1F553"
  ["50"]=$"\U1F554"
  ["60"]=$"\U1F555"
  ["70"]=$"\U1F556"
  ["80"]=$"\U1F557"
  ["90"]=$"\U1F558"
  ["100"]=$"\U1F559"
  ["110"]=$"\U1F55A"

  ["030"]=$"\U1F567"
  ["130"]=$"\U1F55C"
  ["230"]=$"\U1F55D"
  ["330"]=$"\U1F55E"
  ["430"]=$"\U1F55F"
  ["530"]=$"\U1F560"
  ["630"]=$"\U1F561"
  ["730"]=$"\U1F562"
  ["830"]=$"\U1F563"
  ["930"]=$"\U1F564"
  ["1030"]=$"\U1F565"
  ["1130"]=$"\U1F566"
)

hou=`date "+%l"`
min=$((((`date "+%_M"` + 15) / 30) * 30))

if [[ $min -eq 60 ]] ; then
  hou=$((hou + 1))
  min=0
fi

echo -e `date '+w%V 📅 %Y-%m-%d'` ${face[$((hou % 12))$min]} `date '+%H:%M'`
