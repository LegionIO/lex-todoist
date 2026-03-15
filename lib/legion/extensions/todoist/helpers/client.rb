# frozen_string_literal: true

require 'faraday'

module Legion
  module Extensions
    module Todoist
      module Helpers
        module Client
          def connection(token: nil, **_opts)
            Faraday.new(url: 'https://api.todoist.com/rest/v2/') do |conn|
              conn.request :json
              conn.response :json, content_type: /\bjson$/
              conn.headers['Authorization'] = "Bearer #{token}" if token
              conn.adapter Faraday.default_adapter
            end
          end
        end
      end
    end
  end
end
