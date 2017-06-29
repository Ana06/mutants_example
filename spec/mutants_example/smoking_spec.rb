require "spec_helper"

RSpec.describe MutantsExample::Smoking do
  let(:child) { { name: 'pepito', age: 3 } }
  let(:adult) { { name: 'pepe', age: 42 } }
  
  it "don't allow pepito to smoke" do
    expect(MutantsExample::Smoking.can_smoke?(child[:age])).to be false
  end
  
  it "allow pepe to smoke" do
    expect(MutantsExample::Smoking.can_smoke?(adult[:age])).to be true
  end
end