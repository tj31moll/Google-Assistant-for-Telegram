import os

ASSISTANT_API_ENDPOINT = 'embeddedassistant.googleapis.com'
DEFAULT_GRPC_DEADLINE = 60 * 3 + 5
BOT_TOKEN = os.environ.get('BOT_TOKEN')
ALLOWED_CHAT_IDS = list(
        map(int, os.environ.get('ALLOWED_CHAT_IDS').split(','))
        )
AUTHORIZED_USER_IDS = list(
        map(int, os.environ.get('AUTHORIZED_USER_IDS').split(','))
        )
DEVICE_MODEL_ID = os.environ.get('DEVICE_MODEL_ID')
DEVICE_ID = os.environ.get('DEVICE_ID')
