#! /usr/bin/python3

"""Collects the tweets posted by a set of users

Loop over a file of user ids, collect all their tweets and write to a csv in 
the folder created by scripts/twitter-requirements.sh

This script intended to be called by a bash script that manages the VM. See scripts/runscraper.sh

"""

import twint
import os

from tqdm import tqdm

output_data_dir = os.path.join('data', 'raw', 'twitter-data', 'users')


# txt file of one twitter id per line
input_file = os.path.join('data', 'raw', 'twitter-ids.txt') 

with open(input_file, 'r') as f:
    usernames = (f.read()
                  .split('\n'))


for username in tqdm(usernames):
    c = twint.Config()
    c.Username = username
    c.Store_csv = True
    c.User_full = True
    c.Resume = True
    c.Custom["tweet"] = ["id", "date", "time", "place", "tweet", "urls", 
                         "photos", "replies_count", "retweets_count", "likes_count",
                         "hashtags"]
    c.Output = os.path.join(output_data_dir, username)
    
    
    twint.run.Search(c)