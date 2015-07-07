ARABIC_TO_ROMAN_SYMBOLS = {500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'}

def convert_to_roman(arabic_to_convert)
 roman_numeral_result = ''

 ARABIC_TO_ROMAN_SYMBOLS.each do |arabic, roman_symbol|
  while arabic <= arabic_to_convert
   roman_numeral_result = roman_numeral_result + roman_symbol
   arabic_to_convert = arabic_to_convert - arabic 
  end
 end

 return roman_numeral_result
end

describe 'Roman Numerals' do

 it 'returns "I" when arabic is 1' do
  expect(convert_to_roman(1)).to eq('I')   
 end

 it 'returns "II" when arabic is 2' do
  expect(convert_to_roman(2)).to eq('II')
 end

 it 'returns "III" when arabic is 3' do
  expect(convert_to_roman(3)).to eq('III')
 end

 it 'returns "IV" when arabic is 4' do
  expect(convert_to_roman(4)).to eq('IV')
 end

 it 'returns "V" when arabic is 5' do
  expect(convert_to_roman(5)).to eq('V')
 end

 it 'returns "VI" when arabic is 6' do
  expect(convert_to_roman(6)).to eq('VI')
 end
 
 it 'returns "IX" when arabic is 9' do
  expect(convert_to_roman(9)).to eq('IX')
 end

 it 'returns "X" when arabic is 10' do
  expect(convert_to_roman(10)).to eq('X')
 end

 it 'returns "XI" when arabic is 11' do
  expect(convert_to_roman(11)).to eq('XI')
 end

 it 'returns "XIV" when arabic is 14' do
  expect(convert_to_roman(14)).to eq('XIV')
 end

 it 'returns "XVII" when arabic is 17' do
  expect(convert_to_roman(17)).to eq('XVII')
 end

 it 'returns "XIX" when arabic is 19' do
  expect(convert_to_roman(19)).to eq('XIX')
 end
 
 it 'returns "XX" when arabic is 20' do
  expect(convert_to_roman(20)).to eq('XX')
 end
 
 it 'returns "L" when arabic is 50' do
  expect(convert_to_roman(50)).to eq('L')
 end
 
 it 'returns "XL" when arabic is 40' do
  expect(convert_to_roman(40)).to eq('XL')
 end

 it 'returns "C" when arabic is 100' do
  expect(convert_to_roman(100)).to eq('C')
 end

 it 'returns "XC" when arabic is 90' do
  expect(convert_to_roman(90)).to eq('XC')
 end

 it 'returns "XCV" when arabic is 95' do
  expect(convert_to_roman(95)).to eq('XCV')
 end

 it 'returns "D" when arabic is 500' do
  expect(convert_to_roman(500)).to eq('D')
 end

 it 'returns "CD" when arabic is 400' do
  expect(convert_to_roman(400)).to eq('CD')
 end
end
