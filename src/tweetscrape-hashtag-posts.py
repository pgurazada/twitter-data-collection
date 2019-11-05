#! /usr/bin/python3

"""Collecting the full data dump of tweets and associated metadata with a hashtag

We loop over a list of hashtags and collect their tweets and associated engagement data.

The output file is a csv that is collected into a folder created with the execution of scripts/twitter-requirements.sh script.

This script is intended to be called from the bash script that manages the VM (scripts/runscraper.sh) 
"""

import twint
import os

from tqdm import tqdm

HASHTAGS = ['#blancs'] # example


for hashtag in tqdm(HASHTAGS):
    c = twint.Config()
    c.Search = hashtag
    c.Store_csv = True
    c.Custom["tweet"] = ["id", "created_at", "timezone", "location", 
                         "date", "user_id", "username", "tweet", 
                         "replies_count", "retweets_count", "likes_count"]
    c.Output = os.path.join('data', 'raw', 'twitter-data', hashtag)

    twint.run.Search(c)
