require 'bundler/setup'

namespace :link_squares do
  desc "Accepts an Oauth token and reads all links from last 100 emails"
  task :parse, [:email_address, :auth_token] do |t, args|

    LinkSquares.parse!(args[:email_address], args[:auth_token])

  end
end
