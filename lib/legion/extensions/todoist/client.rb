# frozen_string_literal: true

require_relative 'helpers/client'
require_relative 'runners/projects'
require_relative 'runners/tasks'
require_relative 'runners/sections'
require_relative 'runners/labels'
require_relative 'runners/comments'

module Legion
  module Extensions
    module Todoist
      class Client
        include Helpers::Client
        include Runners::Projects
        include Runners::Tasks
        include Runners::Sections
        include Runners::Labels
        include Runners::Comments

        attr_reader :opts

        def initialize(token:, **extra)
          @opts = { token: token, **extra }
        end

        def connection(**override)
          super(**@opts, **override)
        end
      end
    end
  end
end
