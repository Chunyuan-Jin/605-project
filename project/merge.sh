#!/bin/bash

ls ./data > sensor.txt

cut -f1 -d"_" sensor.txt | uniq > sensor_id.txt



for file in $(cat sensor_id.txt);
do
    for file1 in $(grep "${file}_2018-0[123456]" sensor.txt);
    do cat ./data/${file1} >> ./sensor_year/${file}_2017.csv;
    done;
done


for file in $(cat sensor_id.txt);
do
    for file1 in $(grep "${file}_2017-0[789]" sensor.txt);
    do cat ./data/${file1} >> ./sensor_year/${file}_2017.csv;
    done;
done

for file in $(cat sensor_id.txt);
do
    for file1 in $(grep "${file}_2017-10" sensor.txt);
    do cat ./data/${file1} >> ./sensor_year/${file}_2017.csv;
    done;
done

for file in $(cat sensor_id.txt);
do
    for file1 in $(grep "${file}_2017-11" sensor.txt);
    do cat ./data/${file1} >> ./sensor_year/${file}_2017.csv;
    done;
done

for file in $(cat sensor_id.txt);
do
    for file1 in $(grep "${file}_2017-12" sensor.txt);
    do cat ./data/${file1} >> ./sensor_year/${file}_2017.csv;
    done;
done

for file in $(cat sensor_id.txt);
do
    for file1 in $(grep "${file}_2019-0[123456]" sensor.txt);
    do cat ./data/${file1} >> ./sensor_year/${file}_2018.csv;
    done;
done


for file in $(cat sensor_id.txt);
do
    for file1 in $(grep "${file}_2018-0[789]" sensor.txt);
    do cat ./data/${file1} >> ./sensor_year/${file}_2018.csv;
    done;
done

for file in $(cat sensor_id.txt);
do
    for file1 in $(grep "${file}_2018-10" sensor.txt);
    do cat ./data/${file1} >> ./sensor_year/${file}_2018.csv;
    done;
done

for file in $(cat sensor_id.txt);
do
    for file1 in $(grep "${file}_2018-11" sensor.txt);
    do cat ./data/${file1} >> ./sensor_year/${file}_2018.csv;
    done;
done

for file in $(cat sensor_id.txt);
do
    for file1 in $(grep "${file}_2017-12" sensor.txt);
    do cat ./data/${file1} >> ./sensor_year/${file}_2017.csv;
    done;
done
