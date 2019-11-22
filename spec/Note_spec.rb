require 'Note'

describe Note do
  describe '#display' do
    let(:note) { Note.new('x', 'z', formatter_double) }
    let (:formatter_double) { double :formatter, format: "Title: x: z" }
    it "formats note and displays result" do
      expect(note.display).to eq "Title: #{note.title}: #{note.body}"
    end
  end
end

describe NoteFormatter do
  describe '#format' do
    let(:note) { double :note, title: 'Note title', body: 'Note body' }
    it "returns a sentence" do
      expect(subject.format(note)).to eq "Title: #{note.title}: #{note.body}"
    end
  end
end
