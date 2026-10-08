\version "2.26.0"

\header {
  title = "Untitled"
  composer = "Composer"
}

\score {
  \relative c' {
    c4
  }

  \layout {}
  \midi {}
}\version "2.24.0"

\header {
  title = "THE FINAL CODA"
  subtitle = "Ghost Track — Verbal Score for Solitary Voice"
  composer = "Rudy Pimentel"
  tagline = "Silentium Post Symphoniam"
}

\score {
  <<
    \new Staff \relative c {
      \clef bass
      \key c \major
      \time 7/1
      \cadenzaOn
      
      % Primeira Oitava - Dissonância
      c1^\markup { \italic "Lento, doloroso" } d e f g a b \bar "||"
      
      % Segunda Oitava - Resolução
      c,1^\markup { \italic "Con nobiltà, rinascita" } d e f g a b\fermata \bar "|."
    }
    
    \addlyrics {
      % Letra da 1.ª escala (substituindo espaço por hífen ou travessão)
      "DOwnward fell the promises you lied," 
      "REstless in the chamber where I cried;" 
      "MIrage was the haven by your side," 
      "FAtal was the silence when you died." 
      "SOLitary winter in my bone," 
      "LAbyrinth of ashes, cold and lone;" 
      "SIlence where the bitter seed was sown."
      
      % Letra da 2.ª escala
      "DOne with every shadow of remorse," 
      "REquiem that frees my natural course;" 
      "MInd awake, no longer bound by force," 
      "FAr beyond the gravitational source;" 
      "SOLace rising with the amber dawn," 
      "LAsting peace across the desert drawn;" 
      "SInking every ghost that is forgone."
    }
  >>
  \layout {
    indent = 0\mm
  }
}