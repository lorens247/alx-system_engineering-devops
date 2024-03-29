#!/usr/bin/python3
""" 
Count it! 
"""
import requests


def count_words(subreddit, word_list, after=None, word_counts=None):
    
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

        # Initialize word_counts dictionary if it's None
        if word_counts is None:
            word_counts = {}
            for word in word_list:
                word_counts[word.lower()] = 0

        # Extract titles of posts and count occurrences of keywords
        for post in data['data']['children']:
            title = post['data']['title'].lower()
            for word in word_list:
                if word.lower() in title:
                    word_counts[word.lower()] += 1
        
        # If there are more posts, recursively call the function
        # with the 'after' parameter
        if data['data']['after']:
            return count_words(subreddit, word_list,
                    after=data['data']['after'], word_counts=word_counts)
        else:
            # If no more posts, print word counts in descending order
            sorted_counts = sorted(word_counts.items(),
                    key=lambda x: (-x[1], x[0]))
            for word, count in sorted_counts:
                print(f"{word}: {count}")
    else:
        # If the subreddit is not valid, print nothing
        pass

# This block allows the script to be run from the command line
if __name__ == '__main__':
    import sys
    if len(sys.argv) < 3:
        print("Usage: {} <subreddit> <list of keywords>".format(sys.argv[0]))
        print("Ex: {} programming 'python java javascript'".format(sys.argv[0]))
    else:
        subreddit = sys.argv[1]
        keywords = sys.argv[2:]
        count_words(subreddit, keywords)
