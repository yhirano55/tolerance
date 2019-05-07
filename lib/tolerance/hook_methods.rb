# frozen_string_literal: true

require_relative 'fake_exception'

module Tolerance
  module HookMethods # :nodoc:
    private

    def method_missing(name, *args, &block)
      fex = FakeException.new(name: name, receiver: self)
      corrections = ::DidYouMean::VariableNameChecker.new(fex).corrections

      !corrections.empty? ? send(corrections[0], *args, &block) : super
    rescue ArgumentError
      super
    end

    def respond_to_missing?(name, *args)
      fex = FakeException.new(name: name, receiver: self)
      corrections = ::DidYouMean::VariableNameChecker.new(fex).corrections

      !corrections.empty? || super
    end
  end
end
