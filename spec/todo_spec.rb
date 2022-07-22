require "todo"

RSpec.describe Todo do
  it "adds a task" do
    todo = Todo.new
    expect(todo.add_task("task")).to eq ["buy milk", "walk the dog", "wash clothes", "task"]
  end

  it "lists the tasks" do
    todo = Todo.new
    todo.add_task("task")
    expect(todo.list_task()).to eq ["buy milk", "walk the dog", "wash clothes", "task"]
  end

  it "checks a task when it is completed" do
    todo = Todo.new
    expect(todo.complete_task("buy milk")).to eq "This task has been completed!"
  end

  it "removes a task when it is completed" do
    todo = Todo.new
    expect(todo.remove_task("buy milk")).to eq ["walk the dog", "wash clothes"]
  end

  it "adds a task and removes a task when it is completed" do
    todo = Todo.new
    expect(todo.add_task("task")).to eq ["buy milk", "walk the dog", "wash clothes", "task"]
    expect(todo.remove_task("buy milk")).to eq ["walk the dog", "wash clothes", "task"]
  end

  
end