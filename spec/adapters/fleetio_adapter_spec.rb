require 'rails_helper'

RSpec.describe FleetioAdapter, vcr: true do

  describe '#vehicles' do
    subject { FleetioAdapter.new.vehicles(vin) }

    context 'when the vehicle is found' do
      let(:vin)       { '1GBJG31R611156980' }

      it 'returns a OK status code' do
        expect(subject.code).to eq(200)
      end

      it 'returns correct attributes' do
        parsed_json = JSON.parse(subject.body)
        expect(parsed_json.first).to include({"id"=>28848})
      end
    end

    context 'when no vehicles are found' do
      let(:vin) { '0000' }

      it 'returns an empty body' do
        expect(subject.body).to eq('[]')
      end
    end
  end
end
