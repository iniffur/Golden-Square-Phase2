class Todo
    def initialize(task) 
      @task = task
    end
  
    def task
        fail "Please enter a valid task" if @task.length == 0
        @task
    end
end