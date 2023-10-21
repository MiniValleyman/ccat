package main

import (
	"fmt"
	"io"
)

const Version = "1.1.0"

func displayVersion(w io.Writer) {
	fmt.Fprintf(w, "ccat v%s\nby PhateValleyman\nJonas.Ned@outlook.com\n", Version)
}
