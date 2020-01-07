# frozen_string_literal: true

require './lib/player.rb'

describe Player do
  describe '#initialize' do
    it 'if board starts out empty' do
      expect(Player.new('Jon Doe').name).to eql('Jon Doe')
    end
  end
end
