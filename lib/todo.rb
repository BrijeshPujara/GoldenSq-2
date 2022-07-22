class Todo

  def initialize 
    @todo_list = ["buy milk", "walk the dog", "wash clothes"] 
  end

  def add_task(task)
    @todo_list << task
  end

  def list_task
    return @todo_list
  end

  def complete_task(task)
      #method to remove task from array
    
    @todo_list.each do |i|
      if i.include? task
        return "This task has been completed!"
      end 
    end
  end

  def remove_task(task)
    @todo_list.delete_if { |i| i.include? task}
  end

end

todo = Todo.new 
todo.add_task("go to gym")
puts todo.complete_task("buy milk")

