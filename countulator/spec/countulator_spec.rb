require_relative "../countulator"

describe Countulator do
  describe ".countulate" do
    it "returns a copy of the string with consecutive repeating characters replaced by a count of the repetitions" do
      expect(Countulator.countulate("sssssTTTTTToNNps")).to eq "s5T6oN2ps"
    end
  end
end
