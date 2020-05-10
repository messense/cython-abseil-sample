import hello


def test_hello_absl():
    ret = hello.hello_absl()
    assert ret == {1: "one", 2: "two", 3: "three"}
