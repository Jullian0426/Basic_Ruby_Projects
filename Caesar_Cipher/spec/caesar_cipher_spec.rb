require './caesar_cipher'

describe "#caesar_cipher" do
  it "shifts all letters by the given value" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end

  it "handles shifts that wrap around the end of the alphabet" do
    expect(caesar_cipher("xyz", 3)).to eql("abc")
    expect(caesar_cipher("XYZ", 3)).to eql("ABC")
  end

  it "keeps non-alphabetic characters unchanged" do
    expect(caesar_cipher("Hello, World!", 5)).to eql("Mjqqt, Btwqi!")
  end

  it "handles a shift of zero" do
    expect(caesar_cipher("Hello, World!", 0)).to eql("Hello, World!")
  end

  it "handles negative shifts" do
    expect(caesar_cipher("Mjqqt, Btwqi!", -5)).to eql("Hello, World!")
  end

  it "handles large shifts greater than 26" do
    expect(caesar_cipher("Hello, World!", 30)).to eql("Lipps, Asvph!")
  end

  it "handles large negative shifts" do
    expect(caesar_cipher("Lipps, Asvph!", -30)).to eql("Hello, World!")
  end
end