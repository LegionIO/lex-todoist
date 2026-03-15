# frozen_string_literal: true

module Legion
  module Extensions
    module Todoist
      module Runners
        module Sections
          def list_sections(project_id: nil, **)
            params = {}
            params[:project_id] = project_id if project_id
            resp = connection(**).get('sections', params)
            { sections: resp.body }
          end

          def get_section(section_id:, **)
            resp = connection(**).get("sections/#{section_id}")
            { section: resp.body }
          end

          def create_section(name:, project_id:, order: nil, **)
            body = { name: name, project_id: project_id }
            body[:order] = order if order
            resp = connection(**).post('sections', body)
            { section: resp.body }
          end

          def update_section(section_id:, name:, **)
            resp = connection(**).post("sections/#{section_id}", { name: name })
            { section: resp.body }
          end

          def delete_section(section_id:, **)
            connection(**).delete("sections/#{section_id}")
            { deleted: true, section_id: section_id }
          end
        end
      end
    end
  end
end
