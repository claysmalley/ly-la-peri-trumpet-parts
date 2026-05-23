\version "2.24.4"

\include "src/30-trombone-1.ly"

\book {
  \score {
    \compressMMRests \tromboneOneStaff
    \layout {
      \context {
        \Score
        \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
      }
    }
  }
}
