function tree = createTree()
  listaAcordes = listarAcordes();
  
  tree = struct;
  tree.ac = 'X';
  tree.n = criarSubArvore();

  for i = 1:length(listaAcordes)
    acNotas = listaAcordes(i, 2){1}+1;
    simbolo = listaAcordes(i, 1){1}(1, :);
    
    tree.n = setArvoreNota(tree.n, acNotas, simbolo);
  endfor
endfunction