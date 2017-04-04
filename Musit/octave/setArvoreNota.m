function newroot = setArvoreNota(root, notas, simbolo)
  if length(notas) > 1
    root(notas(1)).n = setArvoreNota(root(notas(1)).n, notas(2:end), simbolo);
  elseif length(notas) == 1
    root(notas(1)).ac = simbolo;
  endif
  
  newroot = root;
endfunction