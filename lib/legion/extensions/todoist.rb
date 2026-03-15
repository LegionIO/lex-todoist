# frozen_string_literal: true

require 'legion/extensions/todoist/version'
require 'legion/extensions/todoist/helpers/client'
require 'legion/extensions/todoist/runners/projects'
require 'legion/extensions/todoist/runners/tasks'
require 'legion/extensions/todoist/runners/sections'
require 'legion/extensions/todoist/runners/labels'
require 'legion/extensions/todoist/runners/comments'
require 'legion/extensions/todoist/client'

module Legion
  module Extensions
    module Todoist
      extend Legion::Extensions::Core if Legion::Extensions.const_defined? :Core
    end
  end
end
