\version "2.24.4"

\include "00-outline.ly"

trumpetThreeMusic = \transpose bes c' \relative c'' {
  \set breathMarkType = #'outsidecomma
  \set subdivideBeams = ##t
  \override TupletBracket.bracket-visibility = #'if-no-beam
  \transposition bes
  \clef treble
}

trumpetThreeStaff = \new Staff \with {
  instrumentName = "Trumpet 3"
  midiInstrument = "trumpet"
} <<
  \outline
  \accidentalStyle modern
  \unfoldRepeats \trumpetThreeMusic
>>
