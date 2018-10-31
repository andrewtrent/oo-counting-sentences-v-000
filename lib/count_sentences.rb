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
    self.split(/[.?!]/).each do |unit|
    els << unit if unit != ""
    end
    els.length
  end
end
