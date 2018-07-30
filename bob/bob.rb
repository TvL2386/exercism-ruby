module BookKeeping
  VERSION = 2
end

class Bob
  def self.hey(remark)
    remark = Remark.new(remark)

    if remark.is_yell? and remark.is_question?
      %q{Calm down, I know what I'm doing!}
    elsif remark.is_yell?
      'Whoa, chill out!'
    elsif remark.is_question?
      'Sure.'
    elsif remark.is_empty?
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
end

class Remark
  def initialize(remark)
    @remark = remark

    @is_yell = false
    @is_question = false
    @is_empty = false

    parse
  end

  def is_yell?
    @is_yell
  end

  def is_question?
    @is_question
  end

  def is_empty?
    @is_empty
  end

  private

  def parse
    # check for yell
    # definition: at least 1 uppercase char and no lowercase chars
    if @remark.index(/[A-Z]/) and not @remark.index(/[a-z]/)
      @is_yell = true
    end

    # check for question
    # definition: must end with a question mark ignoring whitespace on the right
    @is_question = @remark.rstrip.end_with?('?')

    # check for empty ignoring whitespace on the right
    @is_empty = (@remark.rstrip.length == 0)
  end
end