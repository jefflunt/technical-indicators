# Takes a list of values, in the order in which they occured in realtime, and
# returns an array of [open, close, min, max]:
#
#  > candletick([1, 4, 0, 23, 1, 2, 4 ,4])
# => [1, 4, 0, 23]
def candlestick(values)
  [values[0], values[-1], values.min, values.max]
end
