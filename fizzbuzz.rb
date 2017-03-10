require 'rspec'

class Fizzbuzz
  def output (num)
    if num % 3 == 0 
      if num % 5 == 0
        return 'FIZZBUZZ'
      else
        return 'FIZZ'
      end
    elsif num % 5 == 0
      return 'BUZZ'
    else
      return num
    end
  end

  def go
    (1..100).each do |num|
      puts output(num)
    end
  end
end

RSpec.describe Fizzbuzz do
  describe '#output' do
    it 'should return 1 if given 1' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(2)).to eq(2)
    end

    it 'should return FIZZ if given 3' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(3)).to eq('FIZZ')
    end

    it 'should return FIZZ if given 6' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(6)).to eq('FIZZ')
    end

    it 'should return BUZZ if given 5' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(5)).to eq('BUZZ')
    end

    it 'should return BUZZ if given 10' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(10)).to eq('BUZZ')
    end

    it 'should return FIZZBUZZ if given 15' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(15)).to eq('FIZZBUZZ')
    end

  end  
end