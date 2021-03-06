// Generated by CoffeeScript 1.9.3
(function() {
  var Converter;

  Converter = (function() {
    function Converter() {}

    Converter.prototype.convert = function(arabic) {
      var i, j, numeral, ref, ref1;
      if (arabic < 4) {
        numeral = '';
        for (i = 1, ref = arabic; 1 <= ref ? i <= ref : i >= ref; 1 <= ref ? i++ : i--) {
          numeral += 'I';
        }
        return numeral;
      } else if (arabic === 4) {
        return 'IV';
      } else if (arabic === 5) {
        return 'V';
      } else if (arabic === 9) {
        return 'IX';
      } else if (arabic === 10) {
        return 'X';
      } else {
        numeral = 'V';
        for (j = 6, ref1 = arabic; 6 <= ref1 ? j <= ref1 : j >= ref1; 6 <= ref1 ? j++ : j--) {
          numeral += 'I';
        }
        return numeral;
      }
    };

    return Converter;

  })();

  describe('Converter', function() {
    var converter;
    converter = {};
    beforeEach(function() {
      return converter = new Converter();
    });
    it('returns "I" when given 1', function() {
      return expect(converter.convert(1)).toEqual('I');
    });
    it('returns "II" when given 2', function() {
      return expect(converter.convert(2)).toEqual('II');
    });
    it('returns "III" when given 3', function() {
      return expect(converter.convert(3)).toEqual('III');
    });
    it('returns "IV" when given 4', function() {
      return expect(converter.convert(4)).toEqual('IV');
    });
    it('returns "V" when given 5', function() {
      return expect(converter.convert(5)).toEqual('V');
    });
    it('returns "VI" when given 6', function() {
      return expect(converter.convert(6)).toEqual('VI');
    });
    it('returns "VIII" when given 8', function() {
      return expect(converter.convert(8)).toEqual('VIII');
    });
    it('returns "IX" when given 9', function() {
      return expect(converter.convert(9)).toEqual('IX');
    });
    return it('returns "X" when given 10', function() {
      return expect(converter.convert(10)).toEqual('X');
    });
  });

}).call(this);
