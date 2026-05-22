\version "2.24.4"

\include "00-outline.ly"

trumpetOneMusic = \relative c'' {
  \transposition bes
  \clef treble
}

trumpetOneStaff = \new Staff \with {
  instrumentName = "Trumpet 1"
  midiInstrument = "trumpet"
} <<
  \outline
  \accidentalStyle modern
  \unfoldRepeats \trumpetOneMusic
>>
