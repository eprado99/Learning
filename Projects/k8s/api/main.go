package main

import (
	"net/http"
	"os"

	"github.com/labstack/echo/v4"
)

func main() {
	e := echo.New()
  e.GET("/", func(c echo.Context) error {
    return c.String(http.StatusOK, "Hello")
  })

  httpPort := os.Getenv("HTTP_PORT")
  if httpPort == "" {
    httpPort = "8080"
  }
  e.Logger.Fatal(e.Start(":" + httpPort))

}
