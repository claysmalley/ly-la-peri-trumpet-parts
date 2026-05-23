\version "2.24.4"

\include "00-outline.ly"

tromboneOneMusic = \relative c' {
  \set breathMarkType = #'outsidecomma
  \set subdivideBeams = ##t
  \override TupletBracket.bracket-visibility = #'if-no-beam
  \clef bass
  \key aes \major
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
  f8-> f-> ees-> c-> a-> b-> |
  bes2.~ |
  bes4~\> bes8\! r r4 |

  <<
    \repeat unfold 2 {
      c2( ees4 |
      d4)~ d8 r r4 |
    }
    s2.\mf
  >>
  c2(\f c4 |
  c8)[ c-.] c-. r r4 |
  c2( c4 |
  
  c4)~ c8 r16. c32-. ees8-> d-> |
  c4~ c8 r16. c32-. ees8-> d-> |
  c8 ees16 d c8 d ees f |
  g2.-> |
  d2.-> |
  f2.-^~\fermata_\markup \italic "sost." |
  f4~ f8 r r4 |

  ees2( ges4 |
  f4)~ f8 r r4 |
  ees2( ges4 |
  f4)~ f8 r16. f32 ges4->( |
  f4~ f8) r16. f32 ges4->( |
  f8->) ges-> f-> d-> d-> a-> |
  bes2.-> |
  bes2.-> |
  a2.->~ |
  a2~ a8\fermata r8 |

  cis2\mp( d4) |
  c4 e( c) |
  cis2( d4) |
  c4( e2) \breathe |
  dis2(_\markup \italic "cresc." e4) |
  d4 fis( d) |
  dis2( e4) |
  d4(_\markup \concat { \italic "più " \dynamic f } fis) e( |
  gis4)_\markup \italic "cresc." f( a) |
  fis4-> cis-> f-> |

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
  f8-^ f-^ ees-^ c-^ a-^ b-^ |
  bes2-^~ bes8\fermata \breathe a8-^ |
  a8-^ b-^ b-^ a-^ bes-^ c-^ |
  des!2.-^ |
  ees2.-^ |
  f2.-^\fermata\ff |
}

\header {
  poet = \markup \concat { 1 \super er " TROMBONE" }
}

tromboneOneStaff = \new Staff \with {
  midiInstrument = "trombone"
} <<
  \outline
  \accidentalStyle modern
  \unfoldRepeats \tromboneOneMusic
>>
