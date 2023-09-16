#!/bin/bash
home_dir=$(pwd)
#script_dir=
#tmp_dir=
#mkdir 

echo "scv8373@bscc-n26
sch0149@bscc-t6
sch6638@bscc-t6
"

read -p "enter the full_dir to cp file from: " full_dir0
f=$(echo $full_dir0 | awk -F '/' '{print $NF}')
read -p "enter the full_dir to cp file to: " full_dir1

#--------------------------------------------------------
mkdir file_trasnfer_between_clusters.t
cd file_trasnfer_between_clusters.t

  echo "papp_cloud scp $full_dir0 ./"
  papp_cloud scp ${full_dir0} ./
  echo "papp_cloud scp ./${f} ${full_dir1}"
  papp_cloud scp ./${f} ${full_dir1}

cd $home_dir 
rm -r file_trasnfer_between_clusters.t
