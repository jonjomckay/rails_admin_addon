require "rails_admin_addon/engine"

module RailsAdminAddon
end

require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'

module RailsAdmin
  module Config
    module Fields
      module Types
        class Addon < RailsAdmin::Config::Fields::Base
          RailsAdmin::Config::Fields::Types::register(self)
        end
      end
    end
  end
end

RailsAdmin::Config::Fields.register_factory do |parent, properties, fields|
  if properties[:name] == :addon
    fields << RailsAdmin::Config::Fields::Types::Addon.new(parent, properties[:name], properties)
    true
  else
    false
  end
end


