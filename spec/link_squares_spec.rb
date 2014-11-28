require 'rspec'
require_relative '../lib/link_squares'

describe LinkSquares do

  describe 'self.parse!' do
    let(:emails) { [ double('email'), double('email') ] }
    let(:links)  { [ double('link'), double('link') ]   }
    let(:file)   { double('file', write: true )         }

    before do
      allow(LinkSquares::Fetcher).to receive(:fetch).and_return emails
      allow(LinkSquares::Parser).to receive(:parse).and_return links
      allow(LinkSquares::LinkValidator).to receive(:validate).and_return links
      allow(LinkSquares::Writer).to receive(:write).and_return file
    end

    after { LinkSquares.parse!('test@example.com', 'AUTH_TOKEN') }

    it 'fetches the emails from Gmail' do
      expect(LinkSquares::Fetcher).to receive(:fetch).with 'AUTH_TOKEN'
    end

    it 'parses the emails to create an array of links' do
      expect(LinkSquares::Parser).to receive(:parse).with emails
    end

    it 'validates the created links to update their information to include the DNS status' do
      expect(LinkSquares::LinkValidator).to receive(:validate).with links
    end

    it 'writes the links to a CSV file' do
      expect(LinkSquares::Writer).to receive(:write).with links, 'test@example.com'
    end
  end
end
