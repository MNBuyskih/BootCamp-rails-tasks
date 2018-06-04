module TasksHelper
  def link_to_done(task)
    classes = 'tasks-item-block'
    classes << ' tasks-item-done' if task.done
    link_to(task.text, {controller: 'tasks', action: 'done', id: task.id}, {class: classes})
  end
end
