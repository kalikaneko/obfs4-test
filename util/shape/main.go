package main

import (
	"0xacab.org/leap/shapeshifter"
	"fmt"
	"os"
	"time"
)

func main() {
	gw := os.Getenv("GW")
	s := &shapeshifter.ShapeShifter{
		Cert:      "/ntRNI6JYP7R6kGKldibKWj0aCsv96Hdu/jSGncPy+rcverCLI7Emod+vRkz61hM7F/udA",
		Target:    gw + ":4430",
		SocksAddr: "localhost:4430",
	}
	s.Open()
	fmt.Println("done")
	timer := time.Tick(1000 * time.Millisecond)
	for t := range timer {
		fmt.Println("tick", t)
	}
}
