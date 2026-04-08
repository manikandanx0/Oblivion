# Patterns

> Recurring problem-solving patterns across topics.

---

## Index
- [ ] Sliding Window
- [ ] Two Pointers
---

## Pattern Notes

### Sliding Window
**When to use:** Subarray/substring problems with a size constraint or condition.  
**Template:**
```python
l = 0
for r in range(len(s)):
    # expand window
    while <invalid condition>:
        # shrink window
        l += 1
    # update result
```
**Problems:** 

---

### Two Pointers
**When to use:** Sorted array, pair/triplet sum, in-place operations.  
**Template:**
```python
l, r = 0, len(arr) - 1
while l < r:
    # logic
```
**Problems:** 

---

<!-- Add new patterns as you discover them -->
