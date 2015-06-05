describe "fizzbuzz" do

  it "do not use the .reverse method in your solution" do
    expect(File.read("lib/reverse_string.rb")).to_not match (/\.reverse/)
  end

  it "test for reversal of string" do
    expect(reverse_string("school")).to eq ("loohcs")
    expect(reverse_string("too")).to eq ("oot")
    expect(reverse_string("ruby")).to eq ("ybur")
  end

end
