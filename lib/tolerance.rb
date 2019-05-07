# frozen_string_literal: true

require_relative 'tolerance/hook_methods'
require_relative 'tolerance/version'

require 'pry'

module Tolerance # :nodoc:
  def self.tracer
    @tracer ||= TracePoint.new(:end) do |t|
      next if t.self.singleton_class? || t.self.ancestors.size == 1

      t.self.include HookMethods
      t.self.extend HookMethods
    end
  end

  tracer.enable
end
