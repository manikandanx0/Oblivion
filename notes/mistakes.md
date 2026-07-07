# Mistakes

> Wrong approaches I took on problems — logged to avoid repeating them.

---

## Template

### [Problem Name] — [Topic]
**Date:** DD-MM-YY  
**What I tried:** _Describe the wrong approach._  
**Why it failed:** _What assumption was wrong? Where did it break?_  
**Correct direction:** _What should you have seen/done instead?_

---

## Log

<!-- Add entries below, newest on top -->

### [[Missing Number]] — [Algorithms]
**Date:** 09-06-2026 

**What I tried:** Implement a summation and a forloop with constraints $2 \le n \le 2 \cdot 10^5$

**Why it failed:** On the summation formula when multiplying the upperbound and upperbound + 1 it automatically exceeds the limit.

**Correct direction:** use long long for summation


### [[A_Next_Round]] - [CodeForces]
**Date:** 06-07-2026
**What I tried:** I tried to brute force a index without checking the bounds. `1< n < 50` but I assumed it started with 0
**Why it failed:** Tried accessing out of bound index with vector so it threw a runtime error
**Correct direction:** Check the bounds. the number range.
