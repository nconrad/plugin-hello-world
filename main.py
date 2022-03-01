from waggle.plugin import Plugin


def main():
    with Plugin() as plugin:
        print("publishing hello world!")
        plugin.publish("test.hello_world", "hello world")


if __name__ == "__main__":
    main()
