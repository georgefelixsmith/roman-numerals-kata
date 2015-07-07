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
    else
      return 'V'

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
