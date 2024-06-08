# frozen_string_literal: true

class ApplicationService
  def self.perform(*args)
    new(*args).resolve
  end
end
