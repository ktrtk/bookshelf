require 'spec_helper.rb'

describe EcsWrapper do
  before do
    @ecs = EcsWrapper.new
  end

  it "should have empty title when it isn't initialized" do
    @ecs.title.should be_empty
  end
end
