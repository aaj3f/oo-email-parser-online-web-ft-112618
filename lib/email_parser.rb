class EmailParser
  attr_reader :emails

  def initialize(email_string)
    @emails = email_string.scan(/\b[^\s,]+\.[a-z]{3}/)
  end

  def parse
    @emails.uniq
  end
end
