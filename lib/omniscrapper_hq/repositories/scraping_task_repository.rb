# frozen_string_literal: true

class ScrapingTaskRepository < Hanami::Repository
  associations do
    belongs_to :schema
    belongs_to :site
  end
end
