# frozen_string_literal: true

module Legion
  module Extensions
    module Todoist
      module Runners
        module Labels
          def list_labels(**)
            resp = connection(**).get('labels')
            { labels: resp.body }
          end

          def get_label(label_id:, **)
            resp = connection(**).get("labels/#{label_id}")
            { label: resp.body }
          end

          def create_label(name:, color: nil, order: nil, **)
            body = { name: name }
            body[:color] = color if color
            body[:order] = order if order
            resp = connection(**).post('labels', body)
            { label: resp.body }
          end

          def update_label(label_id:, name: nil, color: nil, **)
            body = {}
            body[:name] = name if name
            body[:color] = color if color
            resp = connection(**).post("labels/#{label_id}", body)
            { label: resp.body }
          end

          def delete_label(label_id:, **)
            connection(**).delete("labels/#{label_id}")
            { deleted: true, label_id: label_id }
          end
        end
      end
    end
  end
end
