class Todo
    def initialize(task) # task is a string
      @task = task
    end
  
    def task
      fail "Please enter a valid task" if @task.length == 0
      @task
    end
  
    def mark_done!
      
    end
  
    def done?   
   # Returns true if the task is done
      # Otherwise, false
    end
  end