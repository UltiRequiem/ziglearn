const io = @import("std").io;
const expect = @import("std").testing.expect;

pub fn main() !void {
    // const a = [_]u8{ 'h', 'e', 'l', 'l', 'o' };

    const stdout = io.getStdOut().writer();

    try stdout.print("Hello, {s}!\n", .{"world"});
}

test "if statement" {
    const a = true;

    var x: u16 = 0;

    if (a) {
        x += 1;
    } else {
        x += 2;
    }

    try expect(x == 1);
}

test "if statement expression" {
    const a = true;

    var x: u16 = 0;

    x += if (a) 1 else 2;

    try expect(x == 1);
}

test "while with continue expression" {
    var sum: u8 = 0;
    var i: u8 = 1;

    while (i <= 10) : (i += 1) {
        sum += i;
    }

    try expect(sum == 55);
}

test "while with continue" {
    var sum: u8 = 0;
    var i: u8 = 0;

    while (i <= 3) : (i += 1) {
        if (i == 2) {
            continue;
        }

        sum += i;
    }

    try expect(sum == 4);
}

test "while with break" {
    var sum: u8 = 0;
    var i: u8 = 0;

    while (i <= 3) : (i += 1) {
        if (i == 2) {
            break;
        }

        sum += i;
    }

    try expect(sum == 1);
}

test "for" {
    const string = [_]u8{ 'a', 'b', 'c' };

    for (string) |character, index| {
        _ = character;
        _ = index;
    }

    for (string) |character| {
        _ = character;
    }

    for (string) |_, index| {
        _ = index;
    }

    for (string) |_| {}
}

fn addFive(x: u32) u32 {
    return x + 5;
}

test "function" {
    const y = addFive(0);

    try expect(@TypeOf(y) == u32);

    try expect(y == 5);
}
