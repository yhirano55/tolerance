# frozen_string_literal: true

require_relative 'tolerance/hook_methods'
require_relative 'tolerance/version'

module Tolerance # :nodoc:
  def self.enable!
    ::Object.class_eval do
      def self.inherited(klass)
        super
        klass.include HookMethods
        klass.extend HookMethods
      end
    end
  end

  enable!
end
