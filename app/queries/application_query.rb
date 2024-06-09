# frozen_string_literal: true

class ApplicationQuery
  def self.query(*args)
    new(*args).resolve
  end
end
