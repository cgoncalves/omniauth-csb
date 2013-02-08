require 'spec_helper'

describe OmniAuth::Strategies::Csb do
  subject do
    OmniAuth::Strategies::Csb.new({})
  end

  context 'client options' do
    it 'should have correct name' do
      expect(subject.options.name).to eq('csb')
    end

    it 'should have correct site' do
      expect(subject.options.client_options.site).to eq('http://localhost:8080')
    end

    it 'should have correct authorize url' do
      expect(subject.options.client_options.authorize_path).to eq('/csb/oauth/authorization')
    end
  end
end
