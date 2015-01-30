# Big Datum DB

In-memory database for your big datum.

## Usage

### 1. Start the server

```
./bddb.rb 0.0.0.0 8899

# => Big Datum DB running on 0.0.0.0 8899...
```

### 2. Store your Big Datum

```
./bddb-cli 0.0.0.0 8899 set "some string of big datum..."

# => "OK"
```

### 3. Fetch your Big Datum

```
./bddb-cli 0.0.0.0 8899 get

# => "some string of big datum..."
```

## Caveats

1. Your Big Datum must fit in memory.
1. Your Big Datum bust be a single line of text.
1. You can only have one connection at a time.
1. Web-scale.
