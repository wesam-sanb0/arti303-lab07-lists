# ARTI 303 — Lab Assignment 07
## Lists (Parts I and II)

**Course:** ARTI 303 — Programming for AI
**Lab:** 07

### Files
| File | Description |
|------|-------------|
| `lists_tasks.pl` | Task 1 (deleteElement) and Task 2 (add_at_the_end) |
| `shopping.pl` | Lab Activity — Shopping Program |
| `queries.txt` | Test queries and outputs |

### Tasks
1. **Task 1:** `deleteElement(X, List, Result)` removes *all* occurrences of `X` (not just the first one).
2. **Task 2:** `add_at_the_end(X, List, Result)` adds `X` at the end of the list using recursion.
3. **Lab Activity:** Interactive shopping program using a dynamic list (basket) and recursion to display items.

### How to Run
```prolog
?- consult('lists_tasks.pl').
?- deleteElement(1, [1,2,1,4], L).

?- consult('shopping.pl').
?- init_basket.
?- menu..
