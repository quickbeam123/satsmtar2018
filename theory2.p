tff(max,type, max : $int*$int>$int).
tff(max,axiom, ![X:$int,Y:$int] : $greatereq(max(X,Y),X)). 
tff(max,axiom, ![X:$int,Y:$int] : (max(X,Y)=X | max(X,Y)=Y)). 
tff(max,axiom, ![X:$int,Y:$int] : max(X,Y)=max(Y,X)).
tff(max_double,conjecture, ![X:$int] : ($greater(X,0) => $greater(max(X,$sum(X,X)),X))). 
