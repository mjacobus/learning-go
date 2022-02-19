## Learning go

Running go

```
go run main.go
```

Declaring a variable

```go
var dogName string
dogName = "Rute"

// or

dogName := RandomDogName()
```

Variable scope: package name

```go
package main

var dogName string

func main() {
  // dogName not available. It is available under anyware in the main package. (I think)
}
```

Function return types


```go

func someFunction() (string, string){
  return "a", "b"
}

a, b :=  someFunction()
```

Function visibility:

```go
func thisIsPrivate() {
  // lowercase
}

func ThisIsPrivate() {
  // because of capital letter
}
```


Defining a struct:

```go

type User struct {
  FirstName string
  LastName string
  BirthDate time.Time
}

user := User{
  FirstName: "Marcelo",
  LastName: "Jacobus",
}

user.FirstName

```


Looping  throw a "slice"

```go
animals := []string{"cow", "dog", "cat"}

for _, animal := range animals {
  log.Println(animal)
}
```

Maps:

```go
animals := make(map[string]string)

animals["one"] = "cow"
animals["two"] = "dog"
animals["three"] = "cat"

for _, animal := range animals {
  log.Println(animal)
}
```



### Resources
- [Udemy](https://www.udemy.com/course/building-modern-web-applications-with-go/learn/lecture/22910156#overview)

