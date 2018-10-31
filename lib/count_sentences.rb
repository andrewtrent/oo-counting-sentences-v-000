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
    self.split("." || "!" || "?").each do |unit|
      unit << els if unit.include?(/a-zA-Z/)
    end
    binding.pry
    els.length
  end
end
