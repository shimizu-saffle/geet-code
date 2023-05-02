package main

import "fmt"

func fizz(n int) string {
	if n%3 == 0 {
		return "Fizz"
	}
	return""
}

func buzz(n int) string{
	if n%5 == 0{
		return"Buzz"
	}
	return""
}

func numberOrEmpty(n int) string {
	if n%3 != 0 && n%5 != 0 {
		return fmt.Sprint(n)
	}
	return""
}

func fizzBuzz(i int)  {
	if i > 100{
		return
	}

	output := fizz(i) + buzz(i) + numberOrEmpty(i)
	fmt.Println(output)

	fizzBuzz(i + 1)
}

func main()  {
	fizzBuzz(1)
}
