sed -n "6,1280 s/[\[,]//g p" ../engine/solutions.json | awk '{print $2 }' | ./tour > tour.data

