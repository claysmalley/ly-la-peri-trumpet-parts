\version "2.24.4"

\include "00-outline.ly"

trumpetTwoMusic = \relative c'' {
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
