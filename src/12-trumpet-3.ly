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
  instrumentName = \markup \center-column { \line { "Trumpet 3" } \line { \concat { "in B" \super \flat } } }
  midiInstrument = "trumpet"
} <<
  \outline
  \accidentalStyle modern
  \unfoldRepeats \trumpetThreeMusic
>>
