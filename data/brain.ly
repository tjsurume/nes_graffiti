\version "2.19.83"
\include "italiano.ly"
\header {
   title = "Chord1"
}

\paper {
  indent = #0
  ragged-right = ##t
  ragged-bottom = ##t
}

up = \drummode {
  bd4 bd bd bd
}

main_phrase = {
  
  fa16 fa r fa fa8 fa 
  sol16 sol r sol sol8 sol 
  lab16 lab r lab lab8 lab8
  sib16 sib r sib sib8 sib8
  do4 r r r 
  do r r r 
  dod do sib lab sol lab sib sol
}

sub_phrase = {

  do16 do r do do8 do 
  mi16 mi r mi mi8 mi 
  dod16 dod r dod dod8 dod8
  sol'16 sol r sol sol8 sol8
  

  do4 r r r 
  do r r r 
  r16 dod4 do dod fa mi fa sol mi8 mi16

}

main_phrase_b = {

  
  lab16 fa r fa fa r r fa r fa fa fa mib r do r
  lab'16 fa r fa fa r r fa r fa fa fa fa r r r 
  
  lab16 fa r fa fa r r fa r fa fa fa mib r do r
  lab'16 fa r fa fa r r fa r fa fa fa fa r r r 
  
}




bass_phrase_a = {

fa16 r r fa fa'8 fa,16 fa'
    sol,16 r r sol sol'8 sol,16 sol'
    lab,16 r r lab lab'8 lab,16 lab'
    sib,16 r r sib sib'8 sib,16 sib'
    do,4 r r r 
    do4 r r r 
    dod do dod fa mi fa sol mi
    
    fa,
}


bass_act  = {
  fa4 fa16 r  fa r  fa'16 r  fa r fa r r r  
  fa,16. fa fa fa fa fa fa,2
}


\score{

<<
  \new Staff  \with {midiInstrument = "lead 1 (square)"}{
    \tempo 4 = 110
    \relative do'{
      % \main_phrase
    }
  
  }
  
  \new Staff  \with {midiInstrument = "lead 1 (square)"}{
    \tempo 4 = 110
    \relative do'{
      % \sub_phrase
    }
  
  }
  
  \new Staff  \with {midiInstrument = "synth bass 2"}{
    \relative do,{
    \clef bass
      \bass_act
    
    }
  }
>>
  \layout {
  }
  \midi {}

}