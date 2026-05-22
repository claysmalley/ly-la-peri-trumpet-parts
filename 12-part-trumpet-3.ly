\version "2.24.4"

\include "src/12-trumpet-3.ly"

\book {
  \score {
    \trumpetThreeStaff
    \layout {
      \context {
        \Score
        \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
      }
    }
  }
}
