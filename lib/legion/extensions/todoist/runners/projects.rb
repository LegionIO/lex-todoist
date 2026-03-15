# frozen_string_literal: true

module Legion
  module Extensions
    module Todoist
      module Runners
        module Projects
          def list_projects(**)
            resp = connection(**).get('projects')
            { projects: resp.body }
          end

          def get_project(project_id:, **)
            resp = connection(**).get("projects/#{project_id}")
            { project: resp.body }
          end

          def create_project(name:, parent_id: nil, color: nil, **)
            body = { name: name }
            body[:parent_id] = parent_id if parent_id
            body[:color] = color if color
            resp = connection(**).post('projects', body)
            { project: resp.body }
          end

          def update_project(project_id:, name: nil, color: nil, **)
            body = {}
            body[:name] = name if name
            body[:color] = color if color
            resp = connection(**).post("projects/#{project_id}", body)
            { project: resp.body }
          end

          def delete_project(project_id:, **)
            connection(**).delete("projects/#{project_id}")
            { deleted: true, project_id: project_id }
          end

          def collaborators(project_id:, **)
            resp = connection(**).get("projects/#{project_id}/collaborators")
            { collaborators: resp.body }
          end
        end
      end
    end
  end
end
