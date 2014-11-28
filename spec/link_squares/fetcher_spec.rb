require_relative '../../lib/link_squares/fetcher'

describe LinkSquares::Fetcher do

  describe 'self.fetch' do

    it 'accepts an Google OAuth token' do
      expect { LinkSquares::Fetcher.fetch }.to raise_error
      expect { LinkSquares::Fetcher.fetch('auth_token') }.to_not raise_error
    end
  end
end
