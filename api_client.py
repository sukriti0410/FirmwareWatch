import requests

BASE_URL = "https://jsonplaceholder.typicode.com"

def get_device_status():
    response = requests.get(f"{BASE_URL}/todos/1")
    return response.json()