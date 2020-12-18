# Stable Matching Problem

---

In mathematics, economics, and computer science, the stable marriage problem (also stable matching problem or SMP) is the problem of finding a stable matching between two equally sized sets of elements given an ordering of preferences for each element.

---

## Different stable matchings

In general, there may be many different stable matchings. For example, suppose there are three men `A, B, C` and three women `X, Y, Z` which have preferences of:

```cmd
A: YXZ   B: ZYX   C: XZY  
X: BAC   Y: CBA   Z: ACB
```

There are three stable solutions to this matching arrangement:
- men get their first choice and women their third - (AY, BZ, CX)  
- all participants get their second choice - (AX, BY, CZ)   
- women get their first choice and men their third - (AZ, BX, CY)   

All three are stable, because instability requires both of the participants to be happier with an alternative match. Giving one group their first choices ensures that the matches are stable because they would be unhappy with any other proposed match. Giving everyone their second choice ensures that any other match would be disliked by one of the parties.

## Related problems

- In `stable matching` with indifference, some men might be indifferent between two or more women and vice versa.

- `The stable roommates` problem is similar to the stable marriage problem, but differs in that all participants belong to a single pool (instead of being divided into equal numbers of "men" and "women").

- `The hospitals/residents problem` – also known as the college admissions problem – differs from the stable marriage problem in that a hospital can take multiple residents, or a college can take an incoming class of more than one student. Algorithms to solve the hospitals/residents problem can be hospital-oriented (as the NRMP was before 1995) or resident-oriented. This problem was solved, with an algorithm, in the same original paper by Gale and Shapley, in which the stable marriage problem was solved.

- `The hospitals/residents problem` with couples allows the set of residents to include couples who must be assigned together, either to the same hospital or to a specific pair of hospitals chosen by the couple (e.g., a married couple want to ensure that they will stay together and not be stuck in programs that are far away from each other). The addition of couples to the hospitals/residents problem renders the problem NP-complete.

- `The assignment problem` seeks to find a matching in a weighted bipartite graph that has maximum weight. Maximum weighted matchings do not have to be stable, but in some applications a maximum weighted matching is better than a stable one.

- `The matching with contracts problem` is a generalization of matching problem, in which participants can be matched with different terms of contracts. An important special case of contracts is matching with flexible wages.