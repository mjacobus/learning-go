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


### Resources
- [Udemy](https://www.udemy.com/course/building-modern-web-applications-with-go/learn/lecture/22910156#overview)

