# teohook-wrapper

##a teohook scripting wrapper

## How to use
To use this, you must copy all of the code from the `wrapper.lua` file and put it at the top of your file.

## Functions

### Join World
#### params: (string name)
```lua
-- This will warp you to the world "yazhx".
joinworld("yazhx")
```

### Join world with id
#### params: (string name, string doorid)
```lua
-- This will warp you to the world yazhx and doorid : 123
joinworldwithid("yazhx", "123")
```

### Pull player
#### params: (string playername)
```lua
-- This will pull player arky to you
pull("arky")
```

### Hit tile
#### params: (int x, int y)
```lua
-- This will hit tile that is at 0,0
hit(0,0)
```

### Place tile
#### params: (int x, int y)
```lua
-- This will place dirt at 15,15
place(0,0,15)
```
