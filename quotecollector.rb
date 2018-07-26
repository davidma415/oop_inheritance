require_relative 'multilinguist'

class QuoteCollector < Multilinguist

  def initialize
    @quotes = [] #instance variable since not all quotecollectors will have the same quotes
  end

  def add_quote(str)
    @quotes << str
  end

  def all
    return @quotes
  end

  def random
    say_quote = @quotes.sample
    self.say_in_local_language(say_quote)
  end
end

collect1 = QuoteCollector.new
collect1.add_quote('Hello my name is Ron')
collect1.add_quote('I like to take walks on the beach')
collect1.add_quote('What would you like to eat today?')
collect1.travel_to("France")
p collect1.random
