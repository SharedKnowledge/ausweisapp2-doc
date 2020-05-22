---
title: "Sub"
menu:
  main:
    parent: "technical"
    identifier: "technical/sub"
    name: "sub"
    pre: '<i class="fa fa-exclamation-circle"></i>'
    weight: -110
---

# Hello World

## How are you


### i'm fine

#### yolo

##### swagg

**test123**

```bash

echo "Hello World"

```

```go {linenos=table}
func main() {
  var wg *sync.WaitGroup
  for i := 1; i <= 5; i++ {
    wg.Add(1)
    go worker(i, &wg)
  }
  wg.Wait()
}

func worker(id int, wg *sync.WaitGroup) {
  defer wg.Done()
  fmt.Printf("Worker %d starting\n", id)
  time.Sleep(time.Second)
  fmt.Printf("Worker %d done\n", id)
}
```

Execute the code with:
```bash {linenos=table,hl_lines=[4, "8-10"]}
$ go run waitgroups.go
Worker 5 starting
Worker 3 starting
Worker 4 starting
Worker 1 starting
Worker 2 starting
Worker 4 done
Worker 1 done
Worker 2 done
Worker 5 done
Worker 3 done
```