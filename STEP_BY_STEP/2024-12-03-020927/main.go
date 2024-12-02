package main

import (
	"fmt"

	"github.com/alecthomas/kong"
)

type CLI struct {
	Debug bool `help:"Enable debug mode."`
}

func main() {
	cli := CLI{}
	ctx := kong.Parse(&cli)
	fmt.Println("Debug mode enabled:", cli.Debug)
	_ = ctx
}
