require 'spec_helper'

describe OmniAuth::Strategies::Figma do
  subject { OmniAuth::Strategies::Figma.new(nil) }

  before do
    OmniAuth.config.test_mode = true
  end

  after do
    OmniAuth.config.test_mode = false
  end

  describe '#client' do
    it 'has correct Figma site' do
      expect(subject.client.site).to eq('https://www.figma.com')
    end

    it 'has correct `authorize_url`' do
      expect(subject.client.options[:authorize_url]).to eq('/oauth')
    end

    it 'has correct `token_url`' do
      expect(subject.client.options[:token_url]).to eq('/api/oauth/token')
    end
  end

end