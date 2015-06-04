import json


def test_index(client):
    response = client.get("/")
    assert response.status_code == 200


def test_healthcheck(client):
    response = client.get("/health")
    assert response.status_code == 200
    assert json.loads(response.content.decode('utf-8')) == {"ok": True}
