function ACORDES = recog(tree)
  ACORDES = [];

  [y, Fs] = audioread('../sample.wav');

  y = y(:, 1);

  L = 2^10;
  step = L;

  powers = [];
  lastAcorde = 'X';
  k = 0;
  for S = 1:step:length(y)-L+1
    x = y(S:S+L-1);
    
    powers(end+1) = (norm(x)^2)/length(x);
    k = k+1;
    
    if length(powers) <= 2
      continue;
    endif
    
    if length(powers) > 2 && powers(end-1) < 0.001
      continue;
    endif
    
    if length(powers) > 2 && !( ...
                    powers(end-1) > powers(end-2) && powers(end-1) >= powers(end) ...
                    )
      continue
    endif
      
    if S-step <= 0
      continue
    endif
    
    x = y(S-step:S-step+L-1);
    
    X = fft(x)(1:end/2);
    X = upsample(abs(X), 2);
    f = [0:L-1]*(Fs/2)/(L-1);
    
    [m n] = customfindpeaks(abs(X));
    
    ac = 'X';
    if length(m) > 0
      notaStrength = [0 0 0 0 0 0 0 0 0 0 0 0];
      notasAll = arrayfun(@freq2note, f(n))+1;
      for j = 1:length(notasAll)
        notaStrength(notasAll(j)) = notaStrength(notasAll(j)) + m(j);
      endfor
      
      notaStrength = notaStrength/max(notaStrength);
      
      notasValidas = find(notaStrength > 0)-1;
      
      [acordesPossiveis acordesPossiveisStrength] = acordetree(tree, notasValidas, notaStrength(notasValidas+1));
      acordesPossiveisStrength = acordesPossiveisStrength/max(acordesPossiveisStrength);
      
      apsi = find(acordesPossiveisStrength >= 1-std(acordesPossiveisStrength));
      
      ACORDES_STR = acordesPossiveisStrength(apsi);
      
      ACORDES = acordesPossiveis(apsi);
      
      [~,idx] = sort(ACORDES_STR, "descend");
      ACORDES = ACORDES'(idx,:);
      
%      for apsi_i = apsi
%        disp(ACORDES{apsi_i});
%      endfor
%      "fim"
      
%      [m n] = max(acordesPossiveisStrength);
%      ac = acordesPossiveis{n};
%      
%      if ac != 'X' && !strcmp(lastAcorde, ac)
%        ACORDES = ac;
%        lastAcorde = ac;
%      endif
    endif
  endfor

endfunction