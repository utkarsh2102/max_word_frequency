class LineAnalyzer # :nodoc:
  attr_reader :highest_wf_count, :highest_wf_words, :content, :line_number

  # initialize content and line_number
  # and call the calculate_word_frequency
  # method.
  def initialize(content, line_number)
    @content = content
    @line_number = line_number
    calculate_word_frequency(content)
  end

  # calculates the hash of number of times a
  # word appears in #{content} and also
  # determine those words (with the highest
  # word count).
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

class Solution # :nodoc:
  attr_reader :analyzers, :highest_count_across_lines, :highest_count_words_across_lines

  # initialize analyzers
  # as an empty array.
  def initialize
    @analyzers = []
  end

  # analyze the file and put the content
  # in the pre-initialized array, using the
  # LineAnalyzer class.
  def analyze_file
    line_number = 0
    File.foreach('test.txt') do |line|
      @analyzers << LineAnalyzer.new(line.chomp, line_number += 1)
    end
  end

  # calculates the number of highest frequency
  # word and stores that word itself in an array.
  def calculate_line_with_highest_frequency
    @highest_count_across_lines = @analyzers.max_by do |element|
      element.highest_wf_count
    end.highest_wf_count
    @highest_count_words_across_lines = []
    @analyzers.each do |word|
      @highest_count_words_across_lines << word if word.highest_wf_count == @highest_count_across_lines
    end
  end

  # prints the highest frequency word and their
  # line numbers in the specified format.
  def print_highest_word_frequency_across_lines
    puts "The following words have the highest word frequency per line:"
    @analyzers.each do |word|
      puts "#{word.highest_wf_words} (appears in line #{word.line_number})" if word.highest_wf_count == @highest_count_across_lines
    end
  end
end
