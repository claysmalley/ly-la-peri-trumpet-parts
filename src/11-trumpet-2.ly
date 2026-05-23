\version "2.24.4"

\include "00-outline.ly"

trumpetTwoMusic = \transpose bes c' \relative c'' {
  \set breathMarkType = #'outsidecomma
  \set subdivideBeams = ##t
  \override TupletBracket.bracket-visibility = #'if-no-beam
  \transposition bes
  \clef treble
  <<
    \repeat unfold 2 {
      bes4->~
      \splitBeam
      bes16[ r
      \times 2/3 { bes16 bes bes] }
      bes16-. bes-. bes-. bes-. |
    }
    s2.\ff
  >>
  bes8-> des-> c-> a!-> fis-> gis-> |
  f2.-^~_\markup \italic "sost." |
  f4~\> f8\! r r4 |

  R2.*3 |
  r4 r8\f bes,16 f' f bes bes c |
  c8..( d32) d8-. c-. ees-. d-. |
  c8. c32( d) c16-. r c, f f bes bes c |
  c8..( d32) d8-. c-.
  \splitBeam
  \times 2/3 { ees16-. ees-. ees-. }
  \times 2/3 { d16-. d-. d-. } |
  
  \repeat unfold 2 {
    c4->~ c8 r16. c32-. ees8-> d-> |
  }
  c8-> ees16-> d-> c8-> d-> ees-> f-> |
  g2.-> |
  d2.-> |
  f2.-^~\fermata_\markup \italic "sost." |
  f4~ f8 r r4 |

  ees2\mf( ges4 |
  f4)~ f8 r r4 |
  ees2\mf( ges4 |
  f4)~ f8 r ges4( |
  f4)~ f8 r ges4( |
  f8) r r bes,-> ces->[ des->] |
  ees2.-> |
  bes2.-> |
  des2.->~ |
  des2~ des8\fermata r8 |

  aes2\mf( a4) |
  \times 2/3 { aes8( g aes) } e4( c!) |
  aes'2( a4) |
  \times 2/3 { aes8( g aes) } e2 \breathe |
  ais2(_\markup \italic "cresc." b4) |
  \times 2/3 { bes8( a bes) } fis4( d) |
  ais'2( b4) |
  \times 2/3 { bes8(_\markup \concat { \italic "più " \dynamic f } a bes) }
  fis4 \times 2/3 { c'8( b c) } |
  gis4_\markup \italic "cresc." \times 2/3 { cis8( bis cis) } a4 |
  d4-> ais-> b-> |

  <<
    \repeat unfold 2 {
      bes4->~
      \splitBeam
      bes16[ r
      \times 2/3 { bes16 bes bes] }
      bes16-. bes-. bes-. bes-. |
    }
    s2.\ff
  >>
  bes8-^ des-^ c-^ a!-^ fis-^ gis-^ |
  bes2-^~ bes8\fermata \breathe aes8-^ |
  f8-^ fis-^ g-^ a-^ bes-^ c-^ |
  des2.-^ |
  ees2.-^ |
  \times 4/6 { aes,16->\ff aes aes aes aes aes } des2-^\fermata |
}

trumpetTwoStaff = \new Staff \with {
  instrumentName = \markup \center-column { \line { "Trumpet 2" } \line { \concat { "in B" \super \flat } } }
  midiInstrument = "trumpet"
} <<
  \outline
  \accidentalStyle modern
  \unfoldRepeats \trumpetTwoMusic
>>
