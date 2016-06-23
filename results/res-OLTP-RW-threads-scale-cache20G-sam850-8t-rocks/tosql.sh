f="2.csv"

runuuid=$(cat "run.uuid")
if [ -z $runuuid ]; then
    runuuid=$(uuid)
    echo $runuuid > run.uuid
fi

RUNSIG="OLTP-RO-thread-scale-sam863-8t#smblade04-net#"
runparam=$(cat runparam.json)

rm -f $f
for t in mongowt*
do
    for fn in $t/thr*/res.txt
    do
	res=$(basename "$t")
	res=${res#res.} 
	fparam=$(dirname $fn)/runparam.json
	param=$(cat $fparam | sed 's/"$//' | sed 's/-//g')
	addparam=$(echo $param $runparam | jq -c -s add)
	bash parsem.sh $fn $runuuid $f $addparam
	echo $t "|" $res "|" $fn "|" $fparam
    done
done
mysql -h10.20.2.4 -e "DELETE FROM sb_mongo_results WHERE runid='$runuuid'" -usbtest benchmarks
mysql -h10.20.2.4 -e "LOAD DATA LOCAL INFILE '$f' REPLACE INTO TABLE sb_mongo_results FIELDS TERMINATED BY '\t'" -usbtest  --local-infile=1 benchmarks
