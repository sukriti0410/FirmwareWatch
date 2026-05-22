import requests

def test_device_status():

    response = requests.get(
        "https://jsonplaceholder.typicode.com/todos/1"
    )

    assert response.status_code == 200

    data = response.json()

    assert "title" in data