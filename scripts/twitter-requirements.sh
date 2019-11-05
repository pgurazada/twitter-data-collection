#! /bin/bash

# The following series of commands will be executed on a worker with 
# 0.6 GB RAM and OS Ubuntu 18.04 LTS

echo 'startup_message off' >> ~/.screenrc

sudo apt-get update && sudo apt-get -y upgrade

sudo apt-get install -y python3-pip

pip3 install --upgrade -e git+https://github.com/twintproject/twint.git@origin/master#egg=twint

pip3 install tqdm requests

#mkdir data/raw/twitter-data/
#mkdir data/raw/twitter-data/follower-profile-pics
#mkdir data/raw/twitter-data/worker3

echo "all requirements installed"

# Worker 1
#gsutil cp -r gs://nestle-lanka-social/raw/twitter-data/AzzamAmeen/  \
#data/raw/twitter-data/influencers/


# Worker 2
#gsutil cp -r gs://nestle-lanka-social/raw/twitter-data/Dailymirror_SL/  \
#data/raw/twitter-data/influencers/


# Worker 3
#gsutil cp -r gs://nestle-lanka-social/raw/twitter-data/HarshadeSilvaMP/  \
#data/raw/twitter-data/influencers/


# Worker 4
#gsutil cp -r gs://nestle-lanka-social/raw/twitter-data/MaithripalaS/  \
#data/raw/twitter-data/influencers/


# Worker 5
#gsutil cp -r gs://nestle-lanka-social/raw/twitter-data/MangalaLK/  \
#data/raw/twitter-data/influencers/


# Worker 6
#gsutil cp -r gs://nestle-lanka-social/raw/twitter-data/PresRajapaksa/  \
#data/raw/twitter-data/influencers/


# Worker 7
#gsutil cp -r gs://nestle-lanka-social/raw/twitter-data/RW_UNP/  \
#data/raw/twitter-data/influencers/


# Worker 8
#gsutil cp -r gs://nestle-lanka-social/raw/twitter-data/SakunaIndupa/  \
#data/raw/twitter-data/influencers/


# Worker 9
#gsutil cp -r gs://nestle-lanka-social/raw/twitter-data/adaderana/  \
#data/raw/twitter-data/influencers/


# Worker 10
#gsutil cp -r gs://nestle-lanka-social/raw/twitter-data/dialoglk/  \
#data/raw/twitter-data/influencers/


# Worker 11
#gsutil cp -r gs://nestle-lanka-social/raw/twitter-data/irajonline/  \
#data/raw/twitter-data/influencers/


# Worker 12
#gsutil cp -r gs://nestle-lanka-social/raw/twitter-data/otaradel/  \
#data/raw/twitter-data/influencers/


# Worker 13
#gsutil cp -r gs://nestle-lanka-social/raw/twitter-data/thiri66/  \
#data/raw/twitter-data/influencers/


echo "data copied from bucket, ready for data collection..."
