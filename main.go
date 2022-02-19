package main

import (
  "log"
)


func main() {
  animals := make(map[string]string)

  animals["one"] = "cow"
  animals["two"] = "dog"
  animals["three"] = "cat"

  for number, animal := range animals {
    log.Println(number, animal)
  }
}
