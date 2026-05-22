\version "2.24.4"

#(use-modules (srfi srfi-26))
#(set-default-paper-size "letter")

date = #(strftime "%Y–%m–%d" (localtime (current-time)))

\header {
  title = Fanfare
  subtitle = "pour précéder LA PÉRI"
  composer = "Paul Dukas"
  arranger = "ed. Clay Smalley"
  copyright = \markup \concat {
    \italic "CC0, no rights reserved · last updated "
    \italic \date
    " · github.com/claysmalley/horn-fingering-dict"
  }
  tagline = ##f
}

outline = {
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
  \tempo "Modérément animé"
  \time 3/4
  s2.*4 |
  \mark \default
  s2.*7 |
  \mark \default
  s2.*7 |
  \mark \default
  s2.*10 |
  \mark \default
  s2.*10 |
  \mark \default
  s2.*8 |
  \bar "|."
}
