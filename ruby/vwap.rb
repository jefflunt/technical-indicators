# Takes two arrays of numbers (prices and volumes) of equal length,
# and returns the VWAP value.
#
#        Σi (Pi * Vi)
# VWAP = ------------
#           Σi Vi
def vwap(ps, vs)
  raise 'prices and volumes must be the same, non-zero length' if prices.length == 0 || prices.length != volumes.length

  (ps.collect.with_index{|p, i| p * vs[i] }.reduce(:+)) / vs.reduce(:+).to_f
end
