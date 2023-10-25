#!/usr/bin/python3
'''
A function that queries the Reddit API and prints the titles
of the first 10 hot posts listed for a given subreddit.
'''

import requests

def top_ten(subreddit):
    # URL for Reddit API endpoint to get hot posts in a subreddit
    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10"

    # Make a GET request to the Reddit API
    response = requests.get(url, headers={"User-Agent": "Mozilla/5.0"})
    # Check if the response is successful (status code 200)
    if response.status_code == 200:

        # Parse the JSON response
        data = response.json()

        # Extract and print titles of the first 10 hot posts
        for post in data['data']['children']:
            print(post['data']['title'])
    else:
        # If the subreddit is not valid, print None
        print(None)

        # This block allows the script to be run from the command line
        if __name__ == '__main__':
            import sys
            if len(sys.argv) < 2:
                print("Please pass an argument for the subreddit to search.")
            else:
                subreddit = sys.argv[1]
                top_ten(subreddit)


