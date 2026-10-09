\version "2.22.0"

\header {
  title = "The Final Coda"
  composer = "Rudy Pimentel"
  tagline = ##f
}

trebleMusic = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \tempo 4 = 76
  
  % --- I. The Dissonance ---
  % DOwnward falls the vows, REvealing how you lied;
  c4. c8 d4 d8 d |
  d4 d8 d d2 |
  % MIrage was your faith, FAtal to my pride.
  e4. e8 e4 e |
  f4. f8 f2 |
  
  % Pausa enquanto a Clave de Fá responde
  R1 | R1 | R1 | R1 |
  
  % --- II. The Resolution ---
  % SOLitary tears Remains in the LAbyrinth dried;
  g4. g8 g4 g |
  a4 a a2 |
  % SIlence seals my FA, LAcrimosa I died.
  b4. b8 f4 f |
  a4. a8 a2 |
  
  % Pausa enquanto a Clave de Fá responde
  R1 | R1 | R1 | R1 |
  
  % --- III. The Cosmic Fermata ---
  % DOor to the past is locked, REstored from shame and MIght;
  c,4. c8 c4 c |
  d4 d e2 |
  % FAced every burning trial, SOLar flame crowns the night.
  f4. f8 f4 f |
  g4. g8 g2 |
  
  % Pausa durante o encerramento da Clave de Fá
  R1 | R1 | R1 | R1 |
  R1 | R1 | R1 | R1\fermata \bar "|."
}

bassMusic = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  
  % Pausa durante a Clave de Sol (Movimento I)
  R1 | R1 | R1 | R1 |
  
  % DOne with REgrets, a REquiem clears my SOul;
  c4 c d4. d8 |
  d4 d g2 |
  % MInd restored peace, FAr from SOrrow.
  e4 e e8 e4. |
  f4 f g2 |
  
  % Pausa durante a Clave de Sol (Movimento II)
  R1 | R1 | R1 | R1 |
  
  % SOLace in my DOmain, LAsting light to stay;
  g4. g8 c,4 c |
  a'4. a8 a2 |
  % SInking every shadow in the SOlitude to say.
  b4. b8 b4 b |
  g4. g8 g2 |
  
  % Pausa durante a Clave de Sol (Movimento III)
  R1 | R1 | R1 | R1 |
  
  % LAst chains are torn apart, SIlence restores the soul;
  a4. a8 a4 a |
  b4. b8 b2 |
  % DOme of the infinite, REclaims the spirit whole.
  c4. c8 c4 c |
  d4. d8 d2 |
  % MIned was the road of grief, FAr from the shadow's sway;
  e4. e8 e4 e |
  f4. f8 f2 |
  % SOLace and LAmbent light, SInk sorrow in the bay.
  g4. g8 a4 a |
  b4. b8 c2\fermata \bar "|."
}

trebleWords = \lyricmode {
  % Movimento I
  DOwn -- ward falls the vows,
  RE -- veal -- ing how you lied;
  MI -- rage was your faith,
  FA -- tal to my pride.
  
  % Movimento II
  SOL -- i -- tar -- y tears
  Re -- mains in the LA -- by -- rinth dried;
  SI -- lence seals my FA,
  LA -- cri -- mo -- sa I died.
  
  % Movimento III
  DOor to the past is locked,
  RE -- stored from shame and MIght;
  FA -- ced ev -- ery burn -- ing trial,
  SOL -- ar flame crowns the night.
}

bassWords = \lyricmode {
  % Movimento I
  DOne with RE -- grets,
  a RE -- quiem clears my SOul;
  MInd re -- stored peace,
  FAr from SOr -- row.
  
  % Movimento II
  SOL -- ace in my DO -- main,
  LA -- sting light to stay;
  SIn -- king ev -- ery shad -- ow
  in the SO -- li -- tude to say.
  
  % Movimento III
  LAst chains are torn a -- part,
  SI -- lence re -- stores the soul;
  DOme of the in -- fi -- nite,
  RE -- claims the spir -- it whole.
  MI -- ned was the road of grief,
  FAr from the shad -- ow's sway;
  SOL -- ace and LAm -- bent light,
  SInk sor -- row in the bay.
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" <<
      \new Voice = "soprano" { \trebleMusic }
      \new Lyrics \lyricsto "soprano" { \trebleWords }
    >>
    \new Staff = "lower" <<
      \new Voice = "bass" { \bassMusic }
      \new Lyrics \lyricsto "bass" { \bassWords }
    >>
  >>
  \layout {
    \context {
      \Score
      \override BarNumber.break-visibility = ##all-visible
    }
    \context {
      \Lyrics
      \override LyricText.font-size = #0.5
    }
  }
  \midi { }
}

