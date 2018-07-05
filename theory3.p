tff(p,type, p:$int>$o).
tff(q,type, q:$int>$o).
tff(a,type, a:$int).

tff(a,axiom, ![X:$int] : (p(X) => q(X))).
tff(a,axiom, p(5)).

tff(a,axiom, $sum($product(2,a),15) = $product(a,a)).
tff(a,axiom, $greater(a,0)).

tff(a,conjecture,q(a)).
%tff(a,conjecture,a=5).
