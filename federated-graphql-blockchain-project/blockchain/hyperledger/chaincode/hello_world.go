package main

import (
	"fmt"
	"github.com/hyperledger/fabric-contract-api-go/contractapi"
)

// HelloWorldContract contract for handling writing and reading from the world state
type HelloWorldContract struct {
	contractapi.Contract
}

// InitLedger adds a base greeting to the ledger
func (t *HelloWorldContract) InitLedger(ctx contractapi.TransactionContextInterface) error {
	return ctx.GetStub().PutState("greeting", []byte("Hello, World!"))
}

// SetGreeting stores a new greeting in the world state
func (t *HelloWorldContract) SetGreeting(ctx contractapi.TransactionContextInterface, newGreeting string) error {
	return ctx.GetStub().PutState("greeting", []byte(newGreeting))
}

// QueryGreeting returns the current greeting from the world state
func (t *HelloWorldContract) QueryGreeting(ctx contractapi.TransactionContextInterface) (string, error) {
	greetingBytes, err := ctx.GetStub().GetState("greeting")
	if err != nil {
		return "", fmt.Errorf("failed to read from world state: %v", err)
	}
	if greetingBytes == nil {
		return "", fmt.Errorf("greeting not found")
	}

	return string(greetingBytes), nil
}

func main() {
	helloWorldContract := new(HelloWorldContract)
	cc, err := contractapi.NewChaincode(helloWorldContract)

	if err != nil {
		panic(err.Error())
	}

	if err := cc.Start(); err != nil {
		panic(err.Error())
	}
}
