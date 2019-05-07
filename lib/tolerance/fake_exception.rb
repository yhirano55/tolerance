# frozen_string_literal: true

module Tolerance
  class FakeException # :nodoc:
    attr_reader :name, :receiver

    def initialize(name:, receiver:)
      @name = name
      @receiver = receiver
    end
  end
end
