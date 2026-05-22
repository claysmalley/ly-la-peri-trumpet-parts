\version "2.24.4"

\include "src/11-trumpet-2.ly"

\book {
  \score {
    \trumpetTwoStaff
    \layout {
      \context {
        \Score
        \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
      }
    }
  }
}
