class Converter
  
  constructor: ->

  convert: (arabic) ->
    if arabic < 4
      numeral = ''

      for [1..arabic]
        numeral += 'I'

      numeral
    else if arabic == 4
      return 'IV'
    else if arabic == 5
      return 'V'
    else if arabic == 9
      return 'IX'
    else if arabic == 10
      return 'X'
    else
      numeral = 'V'

      for [6..arabic]
        numeral += 'I'

      numeral

describe 'Converter', () ->
  
  converter = {}
  beforeEach ->
    converter = new Converter()

  it 'returns "I" when given 1', ->
    expect(converter.convert(1)).toEqual 'I'

  it 'returns "II" when given 2', ->
    expect(converter.convert(2)).toEqual 'II'

  it 'returns "III" when given 3', ->
    expect(converter.convert(3)).toEqual 'III'

  it 'returns "IV" when given 4', ->
    expect(converter.convert(4)).toEqual 'IV'

  it 'returns "V" when given 5', ->
    expect(converter.convert(5)).toEqual 'V'

  it 'returns "VI" when given 6', ->
    expect(converter.convert(6)).toEqual 'VI'

  it 'returns "VIII" when given 8', ->
    expect(converter.convert(8)).toEqual 'VIII'

  it 'returns "IX" when given 9', ->
    expect(converter.convert(9)).toEqual 'IX'

  it 'returns "X" when given 10', ->
    expect(converter.convert(10)).toEqual 'X'
