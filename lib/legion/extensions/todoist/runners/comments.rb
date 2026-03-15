# frozen_string_literal: true

module Legion
  module Extensions
    module Todoist
      module Runners
        module Comments
          def get_comments(task_id: nil, project_id: nil, **)
            params = {}
            params[:task_id] = task_id if task_id
            params[:project_id] = project_id if project_id
            resp = connection(**).get('comments', params)
            { comments: resp.body }
          end

          def create_comment(content:, task_id: nil, project_id: nil, **)
            body = { content: content }
            body[:task_id] = task_id if task_id
            body[:project_id] = project_id if project_id
            resp = connection(**).post('comments', body)
            { comment: resp.body }
          end

          def update_comment(comment_id:, content:, **)
            resp = connection(**).post("comments/#{comment_id}", { content: content })
            { comment: resp.body }
          end

          def delete_comment(comment_id:, **)
            connection(**).delete("comments/#{comment_id}")
            { deleted: true, comment_id: comment_id }
          end
        end
      end
    end
  end
end
