# frozen_string_literal: true

module ApplicationHelper
  def accepted_files
    [Product::ALLOWED_FILES[:csv], *Product::ALLOWED_FILES[:excel]].join(',')
  end
end
