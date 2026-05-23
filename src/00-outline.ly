\version "2.24.4"

#(use-modules (srfi srfi-26))
#(set-default-paper-size "letter")

date = #(strftime "%Y–%m–%d" (localtime (current-time)))

splitBeam = {
  \once \set baseMoment = #(ly:make-moment 1/8)
  \once \set beatStructure = 2,2,2,2
}

\header {
  title = \markup \normal-text \fontsize #6 FANFARE
  subtitle = "Pour précéder “LA PÉRI”"
  composer = "Paul Dukas"
  arranger = "ed. Clay Smalley"
  copyright = \markup \concat {
    \italic "CC0, no rights reserved · last updated "
    \italic \date
    " · github.com/claysmalley/la-peri-parts"
  }
  tagline = ##f
}

outline = {
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
  \tempo "Modérément animé"
  \time 3/4
  s2.*5 |
  \mark \default
  s2.*7 |
  \mark \default
  s2.*7 |
  \mark \default
  s2.*10 |
  \mark \default
  s2.*10 |
  \mark \default
  s2.*4 |
  \tempo "En élargissant"
  s2.*3 |
  \tempo \markup \concat { "I⁰ Tempo " \small "(1⁰ temps)" }
  s2. |
  \bar "|."
}

\paper {
 ragged-last-bottom = ##f
}
