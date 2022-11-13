package main

import (
	"fmt"
	"net/http"
	"os"
)

func main() {
	resp, err := http.Get("http://google.com")

	if err != nil {
		fmt.Println("Error:", err)
		os.Exit(1)
	}

  if resp.StatusCode == 200 {
      fmt.Println(resp.Status)
  } else {
      fmt.Println("Hello")
  }
}