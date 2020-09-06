require 'rails_helper'

describe FirstProductWorker do
  let(:worker) { FirstProductWorker.new }
  describe '#perform' do
    it 'creates new Product record' do
      worker.perform
      expect(Product.count).to eq 1
    end
  end
end
