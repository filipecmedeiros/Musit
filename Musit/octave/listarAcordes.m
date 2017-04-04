% Informações da construção dos acordes retirada de:
% https://en.wikipedia.org/wiki/Chord_(music)

% As notas           C  C# D  D# E  F  F# G  G# A  A# B
% são mapeadas para  00 01 02 03 04 05 06 07 08 09 10 11
function lista = listarAcordes()
  C = 00; C_ = 01; D = 02; D_ = 03; E = 04; F = 05; F_ = 06; G = 07; G_ = 08; A = 09; A_ = 10; B = 11;

  lista = [
      gerarAcordes([C E G], [' ';'M';'maj';'ma']); % Major triad / 3rd = Major, 5th = Perfect
      gerarAcordes([C D_ G], ['m';'min';'-';'mi']); % Minor triad / 3rd = Minor, 5th = Perfect
      %gerarAcordes([C E G_], ['aug';'+']); % Augmented triad / 3rd = Major, 5th = Augmented
      %gerarAcordes([C D_ F_], ['dim';'º']); % Diminished triad / 3rd = Major, 5th = Diminished
      
      %gerarAcordes([C D_ F_ A], ['º7';'dim7']); % Diminished seventh / 3rd = Minor, 5th = Diminished, 7th = diminished
      %gerarAcordes([C D_ F_ A_], ['ø7']); % Half-diminished seventh / 3rd = Minor, 5th = Diminished, 7th = Minor
      gerarAcordes([C D_ G A_], ['m7';'min7';'−7']); % Minor seventh / 3rd = Minor, 5th = Perfect, 7th = Minor
      gerarAcordes([C D_ G B], ['m(M7)';'m maj7';'−M7']); % Minor major seventh / 3rd = Minor, 5th = Perfect, 7th = Major
      gerarAcordes([C E G A_], ['7';'dom7']); % Dominant seventh / 3rd = Major, 5th = Perfect, 7th = Minor
      gerarAcordes([C E G B], ['M7';'maj7']); % Major seventh / 3rd = Major, 5th = Perfect, 7th = Major
      %gerarAcordes([C E G_ A_], ['+7';'aug7';'7+';'7+5';'7#5']); % Augmented seventh / 3rd = Major, 5th = Augmented, 7th = Minor
      %gerarAcordes([C E G_ B], ['+(M7)';'M7+5';'M7#5']); % Augmented major seventh / 3rd = Major, 5th = Augmented, 7th = Major
      
      %gerarAcordes([C E G A_ D], ['9']); % Dominant ninth
      %gerarAcordes([C E G A_ D F], ['11']); % Dominant eleventh
      %gerarAcordes([C E G A_ D F A], ['13']); % Dominant thirteenth
  ];
endfunction