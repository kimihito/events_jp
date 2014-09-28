$:.unshift(File.expand_path('../', __FILE__))
require 'spec_helper'

describe 'EventsJp::Event' do
  describe '.get_all' do
    context 'with keyword' do
      before(:each) do
        @result = EventsJp.get_events(keyword: 'Ruby',  curator_limit: 100)
      end

      it 'return each 100 events' do
        expect(@result.count).to be >= 210
      end
    end

    context 'no keyword' do
      before(:each) do
        @result = EventsJp.get_events(curator_limit: 100)
      end

      it 'return each 100 events' do
        expect(@result.count).to eq(400)
      end
    end
  end
end