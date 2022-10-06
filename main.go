package main

import (
	"encoding/json"
	"fmt"
	"guess-game/models"
	"io/ioutil"
	"log"
	"math/rand"
	"net/http"
	"os"
	"time"
)

func main() {

	response, err := http.Get("https://imdb-api.com/en/API/Top250Movies/k_fhl1h9zz")
	var modelo models.Request

	if err != nil {
		fmt.Print(err.Error())
		os.Exit(1)
	}

	responseData, err := ioutil.ReadAll(response.Body)
	if err != nil {
		log.Fatal(err)
	}

	rand.Seed(time.Now().Unix())
	number := rand.Intn(249)
	fmt.Println(number)

	json.Unmarshal(responseData, &modelo)

	fmt.Println(modelo.Items[249])

}
