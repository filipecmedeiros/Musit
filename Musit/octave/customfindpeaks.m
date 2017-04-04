function [m n] = customfindpeaks(X)
  d = diff(X);
  s = std(abs(d));
  
  m = [];
  n = [];
  
  for i = 2:length(d)
    if (d(i-1) < 0 && d(i) >= 0) || (d(i-1) > 0 && d(i) <= 0)
%      if abs(d(i-1) - d(i)) > s
      if d(i-1) - d(i) > s
        m(end+1) = X(i);
        n(end+1) = i;
      endif
    endif
  endfor
  
  m = m';
  n = n';
endfunction