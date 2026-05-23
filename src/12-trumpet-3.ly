\version "2.24.4"

\include "00-outline.ly"

trumpetThreeMusic = \transpose bes c' \relative c' {
  \set breathMarkType = #'outsidecomma
  \set subdivideBeams = ##t
  \override TupletBracket.bracket-visibility = #'if-no-beam
  \transposition bes
  \clef treble
  <<
    \repeat unfold 2 {
      f4->~
      \splitBeam
      f16[ r
      \times 2/3 { f16 f f] }
      f16-. f-. f-. f-. |
    }
    s2.\f
  >>
  f8-> bes-> aes-> f-> d!-> e-> |
  d2.-^~_\markup \italic "sost." |
  d4~\> d8\! r r4 |

  <<
    \repeat unfold 2 {
      c'2( ees4 |
      d4)~ d8 r r4 |
    }
    s2.\mf
  >>
  f,2(\f g4 |
  a8)[ g-.] a-. r r4 |
  f2( g4) |
  
  a16-. f-. f-. f-. g-. f-. f-. g-. g-. bes-. a-. g-. |
  f-. f-. f-. f-. g-. f-. f-. g-. g-. bes-. a-. g-. |
  a8-> bes-> a8-> fis-> bes-> aes-> |
  b2.-> |
  a!2.-> |
  des2.-^~\fermata_\markup \italic "sost." |
  des4 r8\f aes,16 des des ees ees aes |

  aes8..( bes32-.) bes8-. aes-. ces-. bes-. |
  aes8. aes32( bes) aes8-. aes,16[ des] des ees ees aes |
  aes8..( bes32-.) bes8-. aes-.
  \splitBeam
  \times 2/3 { ces16-. ces-. ces-. }
  \times 2/3 { bes16-. bes-. bes-. } |
  \repeat unfold 2 {
    aes4~ aes8 r16. aes32
    \splitBeam
    \times 2/3 { ces16-. ces-. ces-. }
    \times 2/3 { bes16-. bes-. bes-. } |
  }
  aes8-> ces16-> bes-> aes8-> bes-> ces-> des-> |
  ees2.-> |
  bes2.-> |
  des2.->~ |
  des2~ des8\fermata r8 |

  e,2\mf( f4) |
  ees4( c g) |
  e'2( f4) |
  ees4( c2) \breathe |
  fis2( g4) |
  f4( d a) |
  fis'2( g4) |
  f4( d) g( |
  e4) aes( f) |
  a4-> fis-> f-> |

  <<
    \repeat unfold 2 {
      f4->~
      \splitBeam
      f16[ r
      \times 2/3 { f16 f f] }
      f16-. f-. f-. f-. |
    }
    s2.\f
  >>
  f8-^ bes-^ aes-^ f-^ d!-^ e-^ |
  d2-^~ d8\fermata \breathe ees8-^ |
  des8-^ d-^ b-^ c-^ g'-^ e-^ |
  a2.-^ |
  g2.-^ |
  \times 4/6 { f16\ff( ges f ges f ges) } aes2-^\fermata |
}

trumpetThreeStaff = \new Staff \with {
  instrumentName = \markup \center-column { \line { "Trumpet 3" } \line { \concat { "in B" \super \flat } } }
  midiInstrument = "trumpet"
} <<
  \outline
  \accidentalStyle modern
  \unfoldRepeats \trumpetThreeMusic
>>
