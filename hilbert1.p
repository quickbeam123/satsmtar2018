fof(ax1, axiom, ![X]: tt(imp(X, X))).
fof(ax2, axiom, ![X,Y]: tt(imp(X, imp(Y, X)))).
fof(ax3, axiom, ![X,Y,Z]: tt(imp(imp(X, imp(Y, Z)), imp(imp(X, Y), imp(X, Z))))).
fof(ax4, axiom, ![X,Y]: tt(imp(imp(neg(Y), neg(X)), imp(X, Y)))).
fof(ax5, axiom, ![X,Y]: (tt(X) & tt(imp(X, Y)) => tt(Y))).

fof(c6, conjecture, ![X]: tt(imp(neg(neg(X)), X))).


