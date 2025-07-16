from main import app

def test_hello():
    client = app.test_client()
    response = client.get("/")
    assert response.data == b"Hello, GitHub Actions!"
    assert response.status_code == 200

def test_health():
    client = app.test_client()
    response = client.get("/health")
    assert response.data == b"OK"
    assert response.status_code == 200
