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

  context "better tests" do
    (0..17).each do |age|
      it "don't allow children of #{age} years old to smoke" do
        expect(MutantsExample::Smoking.can_smoke?(age)).to be false
      end
    end

    (18..100).each do |age|
      it "allow adults of #{age} years old to smoke" do
        expect(MutantsExample::Smoking.can_smoke?(age)).to be true
      end
    end
  end
end