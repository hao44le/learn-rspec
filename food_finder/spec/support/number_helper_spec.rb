# encoding: UTF-8

describe 'NumberHelper' do

  include NumberHelper
  
  describe '#number_to_currency' do

    context 'using default values' do
      
      it "correctly formats an integer" do
        expect(number_to_currency(6)).to eq('$6.00')
      end
      
      it "correctly formats a float" do
        expect(number_to_currency(6.00)).to eq('$6.00')
      end
      it "correctly formats a string" do
        expect(number_to_currency("123")).to eq('$123.00')
      end
      
      it "uses delimiters for very large numbers" do
        expect(number_to_currency(98765123)).to eq('$98,765,123.00')
      end

      it "does not have delimiters for small numbers" do
        expect(number_to_currency(23)).to eq('$23.00')
      end

    end
    
    context 'using custom options' do
      
      it 'allows changing the :unit' do
        expect(number_to_currency(23,:unit => '*')).to eq('*23.00')
      end

      it 'allows changing the :precision' do
        expect(number_to_currency(23.1,:precision => 3)).to eq('$23.100')
      end
      
      it 'omits the separator if :precision is 0' do
        expect(number_to_currency(23,:precision => 0)).to eq('$23')
      end
      
      it 'allows changing the :delimiter' do
        expect(number_to_currency(23123123,:delimiter => '^')).to eq('$23^123^123.00')
      end
      
      it 'allows changing the :separator' do
        expect(number_to_currency(23.1231,:separator => ')')).to eq('$23)12')
      end
            
      it 'correctly formats using multiple options' do
        expect(number_to_currency(23.12331,:separator => '/', :precision => 0)).to eq('$23')
      end
      
    end
    
  end
  
end
