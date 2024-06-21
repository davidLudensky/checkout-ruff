# tests/test_hello_world.py

from checkout_ruff.hello_world import say_hello


def test_say_hello():
    assert say_hello() == "Hello, World!"
