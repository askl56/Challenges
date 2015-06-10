describe "String#equivalent_with?" do

  it "should return true for true case" do
    expect("foobar".equivalent_with? "barfoo").to eq(true)
    expect("barfoo".equivalent_with? "foobar").to eq(true)
  end

  it "should return false for false case" do
    expect("ruby".equivalent_with? "Ruby").to eq(false)
    expect("foobar".equivalent_with? "FOOBAR").to eq(false)
  end

end
