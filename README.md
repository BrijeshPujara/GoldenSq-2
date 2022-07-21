# [Time Reading Text] Method Design Recipe

## 1. Describe the Problem

> As a user
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that I can
> read 200 words a minute.

## 2. Design the Method Signature

```ruby
reading_time = calculate_reading_time(text)

# • text is a string with words in it
# • reading time is a integer representing minutes
```

## 3. Create Examples as Tests

```ruby
# 1
calculate_reading_time("")
# => 0

# 2
calculate_reading_time("one")

# 3
calculate_reading_time(TWO_HUNDRED_WORDS)

# 4
calculate_reading_time(THREE_HUNDRED_WORDS)

# 5
calculate_reading_time(FOUR_HUNDRED_WORDS)

```

# 4. Implement the Behaviour



