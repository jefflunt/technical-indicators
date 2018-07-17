# Takes two arrays of numbers (prices and volumes) of equal length,
# and returns the VWAP value.
#
#        Σ (p(i) * v(i))
# VWAP = ---------------
#            Σ v(i)
def vwap(ps, vs)
  raise 'prices and volumes must be the same, non-zero length' if prices.length == 0 || prices.length != volumes.length

  (ps.collect.with_index{|p, i| p * vs[i] }.reduce(:+)) / vs.reduce(:+).to_f
end
