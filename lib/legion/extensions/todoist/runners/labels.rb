module Legion
  module Extensions
    module Todoist
      module Runners
        module Labels
          include Legion::Extensions::Helpers::Lex

          def list(**); end

          def create(**); end

          def get(**); end

          def update(**); end

          def delete(**); end
        end
      end
    end
  end
end
