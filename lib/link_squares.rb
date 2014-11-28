require 'link_squares/fetcher'
require 'link_squares/parser'
require 'link_squares/link_validator'
require 'link_squares/writer'

module LinkSquares

  def self.parse!(email_address, auth_token)

    emails = LinkSquares::Fetcher.fetch(auth_token)

    links = LinkSquares::Parser.parse(emails)

    links = LinkSquares::LinkValidator.validate(links)

    file = LinkSquares::Writer.write(links, email_address)
  end
end
