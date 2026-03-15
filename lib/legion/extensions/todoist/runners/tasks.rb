# frozen_string_literal: true

module Legion
  module Extensions
    module Todoist
      module Runners
        module Tasks
          def create_task(content:, project_id: nil, due_string: nil, priority: nil, labels: nil, **)
            body = { content: content }
            body[:project_id] = project_id if project_id
            body[:due_string] = due_string if due_string
            body[:priority] = priority if priority
            body[:labels] = labels if labels
            resp = connection(**).post('tasks', body)
            { task: resp.body }
          end

          def get_task(task_id:, **)
            resp = connection(**).get("tasks/#{task_id}")
            { task: resp.body }
          end

          def list_tasks(project_id: nil, label: nil, filter: nil, **)
            params = {}
            params[:project_id] = project_id if project_id
            params[:label] = label if label
            params[:filter] = filter if filter
            resp = connection(**).get('tasks', params)
            { tasks: resp.body }
          end

          def update_task(task_id:, content: nil, due_string: nil, priority: nil, **)
            body = {}
            body[:content] = content if content
            body[:due_string] = due_string if due_string
            body[:priority] = priority if priority
            resp = connection(**).post("tasks/#{task_id}", body)
            { task: resp.body }
          end

          def close_task(task_id:, **)
            connection(**).post("tasks/#{task_id}/close")
            { closed: true, task_id: task_id }
          end

          def reopen_task(task_id:, **)
            connection(**).post("tasks/#{task_id}/reopen")
            { reopened: true, task_id: task_id }
          end

          def delete_task(task_id:, **)
            connection(**).delete("tasks/#{task_id}")
            { deleted: true, task_id: task_id }
          end
        end
      end
    end
  end
end
