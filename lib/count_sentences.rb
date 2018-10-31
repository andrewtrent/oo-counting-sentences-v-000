require 'pry'

class String

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
    els = []
    els << self.split(/.!?/) if els.include?(/a-zA-Z/)
    els.count
  end
end
