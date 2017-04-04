function l = gerarAcordes(base, suffix = '')
  l = [
        {strcat('C', suffix) sort(rem(base+0, 12))};
        {strcat('C#', suffix) sort(rem(base+1, 12))};
        {strcat('D', suffix) sort(rem(base+2, 12))};
        {strcat('D#', suffix) sort(rem(base+3, 12))};
        {strcat('E', suffix) sort(rem(base+4, 12))};
        {strcat('F', suffix) sort(rem(base+5, 12))};
        {strcat('F#', suffix) sort(rem(base+6, 12))};
        {strcat('G', suffix) sort(rem(base+7, 12))};
        {strcat('G#', suffix) sort(rem(base+8, 12))};
        {strcat('A', suffix) sort(rem(base+9, 12))};
        {strcat('A#', suffix) sort(rem(base+10, 12))};
        {strcat('B', suffix) sort(rem(base+11, 12))};
  ];
endfunction