# frozen_string_literal: true

require "ferrum"
require "capybara"

module Capybara::Cuprite
end

require "capybara/cuprite/driver"
require "capybara/cuprite/browser"
require "capybara/cuprite/page"
require "capybara/cuprite/node"
require "capybara/cuprite/errors"

Ferrum::Page.prepend(Capybara::Cuprite::Page)

Capybara.register_driver(:cuprite) do |app|
  Capybara::Cuprite::Driver.new(app)
end
