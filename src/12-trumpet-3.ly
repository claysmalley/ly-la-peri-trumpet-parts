\version "2.24.4"

\include "00-outline.ly"

trumpetThreeMusic = \relative c'' {
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
