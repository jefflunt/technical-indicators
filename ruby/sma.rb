# Takes a list of prices, where the number of prices is equal to the number of
# time periods over which you want to calculate SMA.
#
# Returns the SMA for the list of prices.
def sma(prices)
  prices.reduce(:+).to_f / prices.length
end
