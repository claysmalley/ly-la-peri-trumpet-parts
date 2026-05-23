\version "2.24.4"

\include "00-outline.ly"

tromboneTwoMusic = \relative c' {
  \set breathMarkType = #'outsidecomma
  \set subdivideBeams = ##t
  \override TupletBracket.bracket-visibility = #'if-no-beam
  \clef bass
  \key aes \major
  <<
    \repeat unfold 2 {
      des4->~
      \splitBeam
      des16[ r
      \times 2/3 { des16 des des] }
      des16-. des-. des-. des-. |
    }
    s2.\f
  >>
  des8-> bes-> c-> f,-> d-> e-> |
  f2.~ |
  f4~\> f8\! r r4 |

  <<
    \repeat unfold 2 {
      ees2( f4) |
      f4~ f8 r r4 |
    }
    s2.\mf
  >>
  aes2\f bes4 |
  a8[ bes-.] a-. r r4 |
  aes2( bes4 |
  
  a4)~ a8 r16. a32-. bes8-> bes-> |
  a4~ a8 r16. a32-. bes8-> bes-> |
  a8 bes a a bes aes |
  b2.-> |
  a2.-> |
  aes2.-^~\fermata_\markup \italic "sost." |
  aes4~ aes8 r r4 |

  ces2\f( ees4 |
  des4)~ des8 r r4 |
  ces2( ees4 |
  des4)~ des8 r16. des32 ees4->( |
  aes,4~ aes8) r16. des32 ees4->( |
  aes,8->) ees'-> aes,->[ f-> g-> e->] |
  g2.-> |
  fis2.-> |
  e2.->~ |
  e2~ e8\fermata r8 |

  a2\mp( bes4) |
  aes4 c( g) |
  a2( bes4) |
  aes4( c2) \breathe |
  b2(_\markup \italic "cresc." c4) |
  bes4 d( a) |
  b2( c4) |
  bes4(_\markup \concat { \italic "più " \dynamic f } d) c( |
  e4)_\markup \italic "cresc." des( f) |
  a,4-> bes-> d-> |

  <<
    \repeat unfold 2 {
      des4->~
      \splitBeam
      des16[ r
      \times 2/3 { des16 des des] }
      des16-. des-. des-. des-. |
    }
    s2.\f
  >>
  des8-^ bes-^ c-^ f,-^ d-^ e-^ |
  f2-^~ f8\fermata \breathe c'8-^ |
  des8-^ b-^ g-^ f-^ ees-^ c-^ |
  e!2.-^ |
  g2.-^ |
  aes2.-^\fermata\ff |
}

\header {
  poet = \markup \concat { 2 \super ème" TROMBONE" }
}

tromboneTwoStaff = \new Staff \with {
  midiInstrument = "trombone"
} <<
  \outline
  \accidentalStyle modern
  \unfoldRepeats \tromboneTwoMusic
>>
