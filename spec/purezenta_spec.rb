require "spec_helper"

describe Purezenta do
  it "has a version number" do
    expect(Purezenta::VERSION).not_to be nil
  end

  it "can use a presenter" do
    presenter = Foo.new.presenter

    expect(presenter).to be_a FooPresenter

    expect(presenter.full_name).to eq('foo bar')
  end

  it "can use the null presenter if no presenter associated" do
    presenter = Bar.new.presenter

    expect(presenter).to be_a Purezenta::NullPresenter
  end
end
