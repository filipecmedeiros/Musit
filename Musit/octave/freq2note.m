function C = freq2note(F, returnStr = false)
  base = [261.63 277.18 293.66 311.13 329.63 349.23 369.99 392.00 415.30 440.00 466.16 493.88];
  available_freqs = [ base/16 base/8 base/4 base/2 base base*2 base*4 base*8 base*16 base*32 base*64 ];

  available_chords = ['C';'C#';'D';'D#';'E';'F';'F#';'G';'G#';'A';'A#';'B'];
  
  [m n] = min(abs(F - available_freqs));

  i = rem(n(1)-1, 12);

  if returnStr
    C = available_chords(i+1, :);
  else
    C = i;
  endif
endfunction