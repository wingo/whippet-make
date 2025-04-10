# Whippet GNU make example

This repo is an example of how to use Whippet in a project that uses GNU
make.  See [the documentation](./whippet/doc/manual.md#gnu-make) for
more information.

In this example we build one of the C benchmarks from the Whippet
distribution.  To run:

```bash
make
```

To choose a collector, say, `parallel-mmc`:

```bash
make GC_COLLECTOR=parallel-mmc
```

## License

[Same as Whippet](./whippet/README.md#license).
