tff(f,type,f:$int*$int>$real).
tff(a,type,a:$real).
tff(f,axiom, ![X:$int,Y:$int] : f(X,Y) = $divide($to_real($sum(X,Y)),2.0)).
tff(a,axiom, $sum(a,-1.5)=4.0).
tff(a,conjecture, f(5,6) = a).
