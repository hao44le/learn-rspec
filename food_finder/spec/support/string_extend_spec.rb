describe 'String' do

  describe "#titleize" do

    it "capitalizes each word in a string" do
      expect("asjdoiajs".titleize).to eq("ASJDOIAJS")
    end
    
    it "works with single-word strings" do
      expect("a".titleize).to eq("A")
    end
    
    it "capitalizes all uppercase strings" do
      expect("AJS".titleize).to eq("AJS")
    end
    
    it "capitalizes mixed-case strings" do
      expect("aSjdoiajs".titleize).to eq("ASJDOIAJS")
    end
    
  end
  
  describe '#blank?' do

    it "returns true if string is empty" do
      expect("".blank?).to eq(true)
    end

    it "returns true if string contains only spaces" do
      expect("  ".blank?).to eq(true)
    end

    it "returns true if string contains only tabs" do
      # Get a tab using a double-quoted string with \t
      # example: "\t\t\t"
      expect("\t\t\t".blank?).to eq(true)
    end
    

    it "returns true if string contains only spaces and tabs" do
      expect("   \t  \t   \t  ".blank?).to eq(true)
    end
    
    it "returns false if string contains a letter" do
      expect("d".blank?).to eq(false)
    end

    it "returns false if string contains a number" do
      expect("1".blank?).to eq(false)
    end
    
  end
  
end
