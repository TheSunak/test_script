module LinkSquares

  def self.parse!(email_address, auth_token)

    emails = LinkSquares::Fetcher.fetch(args[:auth_token])

    links = LinkSquares::Parser.parse(emails)

    file = LinkSquares::Writer.write(links)

    file.write
  end
end
