\version "2.24.4"

\include "00-outline.ly"

trumpetOneMusic = \transpose bes c' \relative c'' {
  \set breathMarkType = #'outsidecomma
  \set subdivideBeams = ##t
  \override TupletBracket.bracket-visibility = #'if-no-beam
  \transposition bes
  \clef treble
  <<
    \repeat unfold 2 {
      ees4->~
      \splitBeam
      ees16[ r
      \times 2/3 { ees16 ees ees] }
      ees16-. des-. ees-. f-. |
    }
    s2.\ff
  >>
  ees8-> des-> c-> a!-> fis-> gis-> |
  bes2.-^~_\markup \italic "sost." |
  bes4~\> bes8\! r r4 |

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

  R2.*3 |
  r16\f des-. des-. des-.
  ees-. des-. des-. des-.
  ees-. ges-. f-. ees-. |
  des16-. des-. des-. des-.
  ees-. des-. des-. des-.
  ees-. ges-. f-. ees-. |
  des8 r r4 r |
  R2.*3 |
  R2.\fermata |

  cis2\mf(_\markup \italic "en dehors" a4) |
  \times 2/3 { aes8( g aes) } e4( c!) |
  cis'2( a4) |
  \times 2/3 { aes8( g aes) } e2 \breathe |
  dis'2( b4) |
  \times 2/3 { bes8( a bes) } fis4( d) |
  dis'2( b4) |
  \times 2/3 { bes8( a bes) } fis4 \times 2/3 { c'8( b c) } |
  gis4 \times 2/3 { cis8( bis cis) } a4 |
  d4-> ais-> \times 2/3 { b8->( cis-> d->) } |

  <<
    \repeat unfold 2 {
      ees4->~
      \splitBeam
      ees16[ r
      \times 2/3 { ees16 ees ees] }
      ees16-. des-. ees-. f-. |
    }
    s2.\ff
  >>
  ees8-> des-> c-> a!-> fis-> gis-> |
  bes2-^~ bes8\fermata \breathe aes8-^ |
  f8-^ fis-^ g-^ a-^ bes-^ c-^ |
  des2.-^ |
  ees2.-^ |
  \times 4/6 { des16-^\ff( ees des ees des ees) } f2-^\fermata |
}

trumpetOneStaff = \new Staff \with {
  instrumentName = \markup \center-column { \line { "Trumpet 1" } \line { \concat { "in B" \super \flat } } }
  midiInstrument = "trumpet"
} <<
  \outline
  \accidentalStyle modern
  \unfoldRepeats \trumpetOneMusic
>>
