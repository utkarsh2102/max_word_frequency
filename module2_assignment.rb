class LineAnalyzer # :nodoc:
  attr_reader :highest_wf_count, :highest_wf_words, :content, :line_number

  # initialize content and line_number
  # and call the calculate_word_frequency method.
  def initialize(content, line_number)
    @content = content
    @line_number = line_number
    calculate_word_frequency(content)
  end

  # calculates the hash of number of times a word appears in #{content}
  # and also determine those words (with the highest word count).
  def calculate_word_frequency(content)
    word_count = Hash.new(0)  # hash
    # @highest_wf_words = []  # array
    content.split.each do |word|
      word_count[word.downcase] +=  1
    end
    @highest_wf_count = word_count.values.max
    @highest_wf_words = word_count.select { |key, value| value == @highest_wf_count }.keys
  end
end

#  Implement a class called Solution. 
class Solution

  # Implement the following read-only attributes in the Solution class.
  #* analyzers - an array of LineAnalyzer objects for each line in the file
  #* highest_count_across_lines - a number with the maximum value for highest_wf_words attribute in the analyzers array.
  #* highest_count_words_across_lines - a filtered array of LineAnalyzer objects with the highest_wf_words attribute 
  #  equal to the highest_count_across_lines determined previously.

  # Implement the following methods in the Solution class.
  #* analyze_file() - processes 'test.txt' intro an array of LineAnalyzers and stores them in analyzers.
  #* calculate_line_with_highest_frequency() - determines the highest_count_across_lines and 
  #  highest_count_words_across_lines attribute values
  #* print_highest_word_frequency_across_lines() - prints the values of LineAnalyzer objects in 
  #  highest_count_words_across_lines in the specified format
  
  # Implement the analyze_file() method() to:
  #* Read the 'test.txt' file in lines 
  #* Create an array of LineAnalyzers for each line in the file

  # Implement the calculate_line_with_highest_frequency() method to:
  #* calculate the maximum value for highest_wf_count contained by the LineAnalyzer objects in analyzers array
  #  and stores this result in the highest_count_across_lines attribute.
  #* identifies the LineAnalyzer objects in the analyzers array that have highest_wf_count equal to highest_count_across_lines 
  #  attribute value determined previously and stores them in highest_count_words_across_lines.

  #Implement the print_highest_word_frequency_across_lines() method to
  #* print the values of objects in highest_count_words_across_lines in the specified format
end
