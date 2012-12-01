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

          register_instance_option :html_attributes do
            {
                :maxlength => 50,
                :size => [50, length.to_i].min
            }
          end

          register_instance_option :prepend_text do

          end

          register_instance_option :append_text do

          end

          register_instance_option :partial do
            :form_addon
          end
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


