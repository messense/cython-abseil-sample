import hello


def test_hello_absl():
    ret = hello.hello_absl()
    assert ret == {1: "one", 2: "two", 3: "three"}


def test_hello(capfd):
    hello.hello("World")
    captured = capfd.readouterr()
    assert captured.out == "Hello, World!\n"


def test_elevation():
    assert hello.elevation() == 21463
