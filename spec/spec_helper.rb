$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "purezenta"

class Foo
  include Purezenta::Presentable

  class_attribute :first_name, :last_name

  def initialize
    self.first_name = 'foo'
    self.last_name = 'bar'
  end
end

class FooPresenter < Purezenta::BasePresenter
  def full_name
    @model.first_name + ' ' + @model.last_name
  end
end

class Bar
  include Purezenta::Presentable
end