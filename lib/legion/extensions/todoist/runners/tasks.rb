module Legion
  module Extensions
    module Todoist
      module Runners
        module Tasks
          include Legion::Extensions::Helpers::Lex

          def create(content:, **); end

          def get_active(task_id:, **); end

          def list_active(project_id: nil, label_id: nil, filter: nil, ids: [], **); end

          def update(task_id:, **); end

          def close(task_id:, **); end

          def reopen(task_id:, **); end

          def delete(task_id:, **); end
        end
      end
    end
  end
end
