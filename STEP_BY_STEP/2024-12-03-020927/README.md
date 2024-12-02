1. 目标：实现简单的命令行参数解析
2. 步骤:
- 使用 github.com/alecthomas/kong
- 定义一个简单的命令行结构


Code Explanation

Package Declaration:
    - package main: This declares the package name. The main package is a special package in Go that indicates an executable program. It must contain a main function, which is the entry point of the program.

Imports:
    - fmt: This is a standard Go package used for formatted I/O operations, such as printing to the console.
    - github.com/alecthomas/kong: This is an external package used for command-line parsing. It helps in defining and parsing command-line arguments.

Struct Definition:
    - type CLI struct { Debug bool help:"Enable debug mode." }: This defines a struct named CLI with a single field Debug of type bool. The struct tag help:"Enable debug mode." provides a description for the Debug flag when generating help messages.

Main Function:
    - func main() { ... }: This is the main function where the execution of the program begins.
    - cli := CLI{}: This initializes an instance of the CLI struct.
    - ctx := kong.Parse(&cli): This line uses the kong package to parse command-line arguments and populate the cli struct. The Parse function takes a pointer to the CLI struct and fills it with the values from the command line.
    - fmt.Println("Debug mode enabled:", cli.Debug): This prints a message to the console indicating whether the debug mode is enabled, based on the value of cli.Debug.
    - _ = ctx: This assigns the result of kong.Parse to a variable ctx, which is not used further in the code. The underscore (_) is used to indicate that the variable is intentionally unused.

Purpose
    The code is a simple command-line application that uses the kong package to parse command-line arguments. It specifically checks for a --debug flag, which, if provided, sets the Debug field in the CLI struct to true. The program then prints whether debug mode is enabled based on this flag.


