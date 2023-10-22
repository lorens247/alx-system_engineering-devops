#!/usr/bin/python3
'''
Queries the Reddit API and for number of subreddit subscribers
'''
import requests


def number_of_subscribers(subreddit):
    # Reddit API endpoint URL to get information about the subreddit
    url = f"https://www.reddit.com/r/{subreddit}/about.json"

    # Set a custom User-Agent header to avoid Too Many Requests error
    headers = {"User-Agent": "Custom User Agent"}

    # Make a GET request to the Reddit API
    response = requests.get(url, headers=headers)

    # Check if the request was successful (status code 200)
    if response.status_code == 200:
        # Parse the JSON response and return the number of subscribers
        data = response.json()
        return data['data']['subscribers']
    else:
        # If the subreddit is invalid or there was an error, return 0
        return 0
