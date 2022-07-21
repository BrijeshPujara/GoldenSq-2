def tracking_tasks(str)
  words = str.split(" ")

  if words.include? "#TODO"
    return true
  else
    return false
  end
end 
