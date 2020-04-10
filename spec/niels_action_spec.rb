describe Fastlane::Actions::NielsAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The niels plugin is working!")

      Fastlane::Actions::NielsAction.run(nil)
    end
  end
end
