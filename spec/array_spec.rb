require "spec_helper"
require "./lib/array.rb"

RSpec.describe Array do

  context "#all_empty?" do

    it "returns true if all the elements of the Array are empty" do
      expect(["", "", ""].all_empty?).to be_truthy
    end

    it "returns false if one or more of the array elements are not empty" do
      expect(["", "x", ""].all_empty?).to be_falsey
    end

    it "returns true for an empty array" do
      expect([].all_empty?).to be_truthy
    end
  end

context "#all_same?" do

  it "returns true if all the elements in the array are the same" do
    expect(["x", "x", "x"].all_same?).to be_truthy
  end

  it "returns false if one or more elements in the array is not the same" do
    expect(["x", "o", "x"].all_same?).to be_falsey
  end

  it "returns true for and empty array" do
    expect([].all_same?).to be_truthy
  end
end

context "#any_empty?" do

  it "returns true if any elements of the array are empty and false otherwise" do
    expect(["", "", "x"].any_empty?).to be_truthy
  end

  it "returns false if none of the elements of the array are empty" do
    expect(["x", "x", "x"].any_empty?).to be_falsey
  end

  it "returns true for an empty array" do
    expect([].any_empty?).to be_falsey
  end
end

context "#none_empty?" do

  it "returns true if none of the elements of the array are empty" do
    expect(["x", "x", "x"].none_empty?).to be_truthy
  end

  it "returns false if one of the elements of the array are empty" do
    expect(["x", "", "x"].none_empty?).to be_falsey
  end

  it "returns true for an empty array" do
    expect([].none_empty?).to be_truthy
  end
end

end
