function [listaAc, listaStr] = acordetree(tree, notas = [0 4 7], strength = [])
  notas = sort(notas);
  
  if length(strength) != length(notas)
    strength = zeros(1, length(notas));
  endif
  
  [listaAc, listaStr] = possiveisAcordes(tree, notas+1, strength);
  
endfunction