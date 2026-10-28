# ziglearn

> **Status: archived.** My notes from working through [ziglearn.org](https://ziglearn.org) in 2022.

Each file is a topic from the guide, written as Zig `test` blocks, so running a file checks that what I
understood is true.

## Index

| File | Topic |
|---|---|
| [hello_world.zig](./hello_world.zig) | `main` and printing, `if`, `while` (with `continue` expressions, `continue`, `break`), `for`, functions |
| [defer.zig](./defer.zig) | `defer`: runs at the end of the scope, several `defer`s run in reverse order |
| [errors.zig](./errors.zig) | error sets and unions, `catch`, `try`, `errdefer`, inferred error sets, merging sets with `\|\|` |
| [fibonacci.zig](./fibonacci.zig) | recursion |
| [runtime_safety.zig](./runtime_safety.zig) | `@setRuntimeSafety(false)` and what it does to an out-of-bounds read |

## Run them

```sh
zig test defer.zig
zig test errors.zig
zig run hello_world.zig     # has a main, prints "Hello, world!"
```

## Zig version

Written for **Zig 0.9**. Zig changes fast, and newer releases changed things used here (the `for` loop capture
syntax `|character, index|` and the `io.getStdOut()` API, among others), so newer compilers will report errors
on these files. Use a 0.9.x build from [ziglang.org/download](https://ziglang.org/download/#release-0.9.1),
or treat the files as notes and check the current [language reference](https://ziglang.org/documentation/master/).

## License

MIT, see [LICENSE](./LICENSE).
