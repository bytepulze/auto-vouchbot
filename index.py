import json, requests, random

with open("data/config.json", "r") as f:
    config = json.load(f)

with open("data/words.txt", "r") as f:
    words = f.readlines()
    for word in words:
        word.strip()

with open("data/tokens.txt", "r") as f:
    tokens = f.readlines()

def index(token):
    url = f"https://discord.com/api/v9/channels/{config['channel_id']}/messages"
    headers = {"Authorization": token, "Content-Type": "application/json"} 

    word1 = random.choice(words)
    word = word1.replace("\n", "")

    payload = {"Content": f"{word}"}

    r = requests.post(url, headers=headers, json=payload)
    if(r.status_code == 200):
        print("Message Sent")
    else:
        print(f"Failed {r.status_code}")

for token in tokens:
    token = token.replace("\n", "")
    index(token)
