\version "2.24.4"

\include "src/31-trombone-2.ly"

\book {
  \score {
    \compressMMRests \tromboneTwoStaff
    \layout {
      \context {
        \Score
        \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
      }
    }
  }
}
