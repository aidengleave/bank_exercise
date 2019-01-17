## Specification

### Instructions

* Use a timer for 15 minute cycles
* Use a set of TDD process cards
* Start with a feature test
* Use 15 min cycles to write tests and write code to pass them
* **CRITICAL:** If you don't finish in 15 mins
  - stop
  - reflect on what you learnt
  - delete everything
  - Try again with the knowledge you've gained **or** break your task into two tasks.

### Requirements

* You should be able to interact with your code via a REPL like IRB.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
