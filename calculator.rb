require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end

    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end
  
  describe '#subtract' do
    it 'should subtract two positive numbers for a positive result' do
      calculator = Calculator.new()
      result = calculator.subtract(8,4)
      expect(result).to eq(4)
    end
    
    it 'should subtract two positive numbers for a negative result' do
      calculator = Calculator.new()
      result = calculator.subtract(3,10)
      expect(result).to eq(-7)
    end
    
    it 'should subtract a negative from a positive number' do
      calculator = Calculator.new()
      result = calculator.subtract(10,-5)
      expect(result).to eq(15)
    end

    it 'should subtract two negative numbers' do
      calculator = Calculator.new()
      result = calculator.subtract(-8,-4)
      expect(result).to eq(-4)
    end
  end
  
  describe '#multiply' do
    it 'should multiply two positive numbers' do
      calculator = Calculator.new()
      result = calculator.multiply(11,5)
      expect(result).to eq(55)
    end
    it 'should multiply two negative numbers' do
      calculator = Calculator.new()
      result = calculator.multiply(-3,-7)
      expect(result).to eq(21)
    end
    it 'should multiply a postive and negative number' do
      calculator = Calculator.new()
      result = calculator.multiply(3, -9)
      expect(result).to eq(-27)
    end
  end

  describe '#divide' do
    it 'should divide two positive numbers' do
      calculator = Calculator.new()
      result = calculator.divide(4,2)
      expect(result).to eq(2)
    end
    it 'should divide two negative numbers' do
      calculator = Calculator.new()
      result = calculator.divide(-40,-10)
      expect(result).to eq(4)
    end
    it 'should divide a postive and negative number' do
      calculator = Calculator.new()
      result = calculator.divide(90,-10)
      expect(result).to eq(-9)
    end
  end

  describe '#square' do
    it 'should square a postive number' do
      calculator = Calculator.new()
      result = calculator.square(4)
      expect(result).to eq(16)
    end
    it 'should square a negative number' do
      calculator = Calculator.new()
      result = calculator.square(-3)
      expect(result).to eq(9)
    end
    it 'should square a zero number' do
      calculator = Calculator.new()
      result = calculator.square(0)
      expect(result).to eq(0)
    end
  end

  describe '#power' do
    it 'should power a postive number with a postive number' do
      calculator = Calculator.new()
      result = calculator.power(4,2)
      expect(result).to eq(16)
    end
    it 'should power a negative number with a postive number' do
      calculator = Calculator.new()
      result = calculator.power(-3,3)
      expect(result).to eq(-27)
    end
    it 'should power a zero number' do
      calculator = Calculator.new()
      result = calculator.power(0, 5)
      expect(result).to eq(0)
    end
  end
end