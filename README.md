# AppStoreReviewsDownloader

Ever wanted to download all reviews of your app from AppStore? That is what happened to me, I couldn't find a proper trusfuly tool to do it, so I created a rudimentary script that does the job.

# How it works?

The only available option in appstoreconnect to see reviews is an scrollable list, and this script takes advantage of that by looping in the pagination service to retrieve all available records and write them into a json file.

# Setup

1. Get access to the reviews: Login into you [appstoreconnect](https://appstoreconnect.apple.com/) account and go to the Reviews section,
2. Get the pagination request: Now you need to get the `curl` request, using any browser, go to the network section and export the request that is launched onces you scroll to the reviews bottom of the list. 
3. Configure the scrip: open the `downloadReviews.sh` file and set a value for the variable `quantityOfReviews`.
![ReviewsCopyAsCurl](https://user-images.githubusercontent.com/16930032/120878734-4c3b9a80-c58c-11eb-8365-239e4652e486.gif)
4. Paste the `curl`: Paste the copied `curl` request overridding the template inside in the script, but considering the steps in the folowing video.
![ReplaceCurl](https://user-images.githubusercontent.com/16930032/120878881-64f88000-c58d-11eb-9dab-8bcdb3addc2f.gif)

# Run

`sh downloadReviews.sh`
