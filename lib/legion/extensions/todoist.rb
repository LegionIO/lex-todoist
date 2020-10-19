require 'legion/extensions/todoist/version'

module Legion
  module Extensions
    module Todoist
      extend Legion::Extensions::Core if Legion::Extensions.const_defined? :Core
    end
  end
end
