#!/usr/bin/python3
'''
Queries the Reddit API recursively and returns a list
containing the titles of all hot articles for a subreddit
'''

import requests

def recurse(subreddit, hot_list=[], after=None):
    # Base URL for Reddit API endpoint to get hot posts in a subreddit
    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=100"
    
    # If there are more posts to fetch, add 'after' parameter to the URL
    if after:
        url += f"&after={after}"

    # Make a GET request to the Reddit API
    response = requests.get(url, headers={"User-Agent": "Mozilla/5.0"})
    
    # Check if the response is successful (status code 200)
    if response.status_code == 200:
        # Parse the JSON response
        data = response.json()
        
        # Extract titles of posts and add them to the hot_list
        for post in data['data']['children']:
            hot_list.append(post['data']['title'])
        
        # If there are more posts, recursively call the function with the 'after' parameter
        if data['data']['after']:
            return recurse(subreddit, hot_list, after=data['data']['after'])
        else:
            # If no more posts, return the hot_list
            return hot_list
    else:
        # If the subreddit is not valid, return None
        return None

# This block allows the script to be run from the command line
if __name__ == '__main__':
    import sys
    if len(sys.argv) < 2:
        print("Please pass an argument for the subreddit to search.")
    else:
        subreddit = sys.argv[1]
        hot_list = recurse(subreddit)
        if hot_list is not None:
            print(len(hot_list))
        else:
            print("None")

