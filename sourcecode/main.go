package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	
	// http request method
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "'Hello World!', - said GoLang.")
	})
	
	// http.ListenAndServe - HTTP server
	log.Fatal(http.ListenAndServe(":8080", nil))
}