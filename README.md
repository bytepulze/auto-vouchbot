# Discord Auto-Voucher

With Auto-Vouch Bot U Can Automatically send messages (vouches) to a specific Discord channel using a list of your Discord tokens. Each message is chosen randomly from a list of predefined words in data/words.txt .

## Features

- Automatically sends messages to a Discord channel.
- Randomly selects messages from a predefined list.
- Uses multiple Discord tokens for sending messages.

## Requirements

- Python 3.x
- `requests` library

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/discord-auto-voucher.git
    cd discord-auto-voucher
    ```

2. Install the required Python packages:
    ```bash
    pip install requests
    ```

3. Set up your configuration:
    - Create a `config.json` file in the `data` directory with the following content:
        ```json
        {
            "channel_id": "YOUR_CHANNEL_ID"
        }
        ```
    - Add your predefined lines to a `words.txt` file in the `data` directory, with each word on a new line.
    - Add your Discord tokens to a `tokens.txt` file in the `data` directory, with each token on a new line.

## Usage

Run the script:
```bash
python auto_voucher.py
