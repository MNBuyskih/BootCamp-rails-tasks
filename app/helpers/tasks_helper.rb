module TasksHelper
  def link_to_done(task)
    link_to(task.text, {controller: 'tasks', action: 'done', id: task.id}, {class: task_block_class(task)})
  end

  def task_block_class(task)
    classes = 'tasks-item-block'
    classes << ' tasks-item-done' if task.done
    classes
  end
end
