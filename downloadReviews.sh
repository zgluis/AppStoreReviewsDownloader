### Setup
quantityOfReviews=100 # Set the quantity of reviews you want to download
outputFile="./appStoreReviews.json"
###
rm -f $outputFile
maxNumberReviews=100
iterationEnd=`echo "scale=0 ; $quantityOfReviews / $maxNumberReviews" | bc`
for i in $(seq 1 $iterationEnd);
do
index=$((i*100))
echo "Executing request" $i
curl "https://appstoreconnect.apple.com/WebObjects/iTunesConnect.woa/ra/apps/xxx/platforms/ios/reviews?index={$index}&sort=REVIEW_SORT_ORDER_MOST_RECENT" \
  -H 'authority: xxx' \
  -H 'pragma: xxx' \
  -H 'cache-control: xxx' \
  -H 'sec-ch-ua: xxx' \
  -H 'accept: xxx' \
  -H 'sec-ch-ua-mobile: xxx' \
  -H 'user-agent: xxx' \
  -H 'x-csrf-itc: xxx' \
  -H 'sec-fetch-site: xxx' \
  -H 'sec-fetch-mode: xxx' \
  -H 'sec-fetch-dest: xxx' \
  -H 'referer: xxx' \
  -H 'accept-language: xxx' \
  -H 'cookie: xxx' \
  --compressed >> $outputFile;
  sleep 1 # delay 1 second every request _just in case_
done