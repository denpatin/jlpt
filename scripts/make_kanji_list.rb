require 'csv'

exam_level = ARGV[0]
kanjidic_raw = File.open("../N#{exam_level}/kanji/kanji.raw", "r").read

lesson_kanji = ARGV[1]
kanji = lesson_kanji.chars

kanjidic = CSV.parse(kanjidic_raw, col_sep: ";")

kanjidic.each do |d|
  kanji.each do |k|
  	puts k if d[0] == k
  end
end
