require 'pry'

class String

  # attr_accessor :str
  # def initialize(str)
  #   @str = str
  # end

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence = self.split(/[\.\?\!]/)
    count = sentence.reject { |e| e == ""}
    count.size
  end
end