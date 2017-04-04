function root = criarSubArvore(maxNiveis = 7, nivel = 1)
  root = [struct struct struct struct struct struct struct struct struct struct struct struct];
  
  if nivel < maxNiveis
    subtree = criarSubArvore(maxNiveis, nivel+1);
  endif
  
  for j = 1:12
    root(j).ac = 'X';
    
    if nivel < maxNiveis
      root(j).n = subtree;
    endif
  endfor
endfunction