package main

// import "fmt"

func main() {
	// var card string = "Ace of Spades"
	// card := newCard()
	// fmt.Println(card)

	// cards := newDeck()
	// hand, remainingDeck := deal(cards, 5)
	// hand.print()
	// remainingDeck.print()

	// cards := newDeck()
	// cards.saveToFile("mycards")

	// cards := newDeckFromFile("mycards")
	// cards.print()

	cards := newDeck()
	cards.shuffle()
	cards.print()
}
