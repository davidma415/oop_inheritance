require_relative 'multilinguist'

class MathGenius < Multilinguist
  def report_total(arr)
    @total = arr.inject(:+)
    @msg = "The total is #{@total}."
    self.say_in_local_language(@msg)
  end
end

me = MathGenius.new
puts me.report_total([1,2,3])
me.travel_to("India")
puts me.report_total([1,2,3])
me.travel_to("Italy")
puts me.report_total([1,2,3])
