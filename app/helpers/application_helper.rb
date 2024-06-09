# frozen_string_literal: true

module ApplicationHelper
  include Pagy::Frontend

  def active_link(current, link)
    current == link ? 'active-link' : ''
  end

  def accepted_files
    [Product::ALLOWED_FILES[:csv], *Product::ALLOWED_FILES[:excel]].join(',')
  end
end
