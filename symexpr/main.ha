use fmt;
use bufio;
use os;
use strings;


export fn main() void = {
	fmt::println("A simple symbolic expressions interpreter")!;
	let line = "";
	for(line != "/q") {
		fmt::printf(":> ")!;
		bufio::flush(os::stdout)!;
		const in = bufio::read_line(os::stdin)! as []u8;
		line = strings::fromutf8(in)!;
		if(line != "/q") {
			if(line == "a") {
				fmt::println("-> a")!;
			} else {
				fmt::println("-> undefined")!;
			};
		};
	};
};
