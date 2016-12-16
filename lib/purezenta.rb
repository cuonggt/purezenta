require "purezenta/version"
require "rails"

module Purezenta
  class BasePresenter
    def initialize(model)
      @model = model
    end
  end

  class NullPresenter < BasePresenter
  end

  module Presentable
    def presenter
      presenter_class = "#{self.class}Presenter".safe_constantize

      if presenter_class.nil?
        return NullPresenter.new(self)
      end

      presenter_class.new(self)
    end
  end
end
