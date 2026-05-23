\version "2.24.4"

\include "00-outline.ly"

trumpetTwoMusic = \transpose bes c' \relative c'' {
  \set breathMarkType = #'outsidecomma
  \set subdivideBeams = ##t
  \override TupletBracket.bracket-visibility = #'if-no-beam
  \transposition bes
  \clef treble
}

trumpetTwoStaff = \new Staff \with {
  instrumentName = "Trumpet 2"
  midiInstrument = "trumpet"
} <<
  \outline
  \accidentalStyle modern
  \unfoldRepeats \trumpetTwoMusic
>>
