require 'unobtrusive_flash'
require "unobtrusive_flash/controller_mixin"
require 'rails'

module UnobtrusiveFlash
  class Engine < ::Rails::Engine
    ActiveSupport.on_load :action_controller do
      ActionController::Base.send :include, UnobtrusiveFlash::ControllerMixin
    end
  end
end
