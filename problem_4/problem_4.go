package main

import "fmt"

func isAllUnique(input string) bool {
	// 出現した文字を保持するマップを定義
	charExists := make(map[rune]bool)

	for _, char := range input {
		// すでに出現している文字なら、重複しているので false を返す
		if charExists[char] {
			return false
		}
		// まだ出現していない文字なら、charExists マップに追加する
		charExists[char] = true
	}
	return true
}

func main() {
	input := "abcde"

	if isAllUnique(input) {
		fmt.Printf("%s はすべての文字が一意です。\n", input)
	} else {
		fmt.Printf("%s には重複した文字が含まれています。\n", input)
	}
}
