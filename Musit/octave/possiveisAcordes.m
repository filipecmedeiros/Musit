function [listaAc, listaStr] = possiveisAcordes(root, notas, strength, cumStrength = 0, maxNiveis = 4, nivel = 0)
  listaAc = {};
  listaStr = [];
  
  if root.ac != 'X'
    listaAc{end+1} = root.ac;
    listaStr(end+1) = cumStrength/nivel;
  endif
  
  if length(notas) > 0 && nivel < maxNiveis
    for i = 1:length(notas)
      [subListaAc subListaStr] = possiveisAcordes(root.n(notas(i)), notas(i+1:end), strength(i+1:end), cumStrength+strength(i), maxNiveis, nivel+1);
      
      listaAc = [listaAc subListaAc];
      listaStr = [listaStr subListaStr];
    endfor
  endif
endfunction