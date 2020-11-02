require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end

  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end

  end

  # use 'self'
  # return count of sentences with integer
  # 'split' string on periods, question marks and exclamation marks
  # 'count' num of elements that result from 'split'
  def count_sentences
    array = self.split(/[!?.]/).reject {|string| string.empty?}
    return array.length
  end
  
end