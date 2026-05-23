\version "2.24.4"

\include "src/10-trumpet-1.ly"

\book {
  \score {
    \compressMMRests \trumpetOneStaff
    \layout {
      \context {
        \Score
        \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
      }
    }
  }
}
