package main

import (
	"log"
)

type User struct {
	FirstName string
	LastName  string
	Email     string
	Age       int
}

func main() {
	var users []User

	users = append(users, User{"Marcelo", "Jacobus", "marcelo@email.com", 37})
	users = append(users, User{"John", "Doe", "john@email.com", 50})

	for _, user := range users {
		log.Println(user.FirstName, user.LastName, user.Email, user.Age)
	}
}
