package main

import (
  "fmt"

  "example.com/greetings"
)

func main() {
  message := greetings.Hello("Carlos")
  fmt.Println(message)
}
