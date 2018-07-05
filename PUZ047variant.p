fof(ax1, axiom, p(south, south, south, south, start)).
fof(ax2, axiom, ![T]: (p(south, north, south, north, T) => p(north, north, south, north, go_alone(T)))).
fof(ax3, axiom, ![T1]: (p(north, north, south, north, T1) => p(south, north, south, north, go_alone(T1)))).
fof(ax4, axiom, ![T2]: (p(south, south, north, south, T2) => p(north, south, north, south, go_alone(T2)))).
fof(ax5, axiom, ![T3]: (p(north, south, north, south, T3) => p(south, south, north, south, go_alone(T3)))).
fof(ax6, axiom, ![T4]: (p(south, south, south, north, T4) => p(north, north, south, north, take_wolf(T4)))).
fof(ax7, axiom, ![T5]: (p(north, north, south, north, T5) => p(south, south, south, north, take_wolf(T5)))).
fof(ax8, axiom, ![T6]: (p(south, south, north, south, T6) => p(north, north, north, south, take_wolf(T6)))).
fof(ax9, axiom, ![T7]: (p(north, north, north, south, T7) => p(south, south, north, south, take_wolf(T7)))).
fof(ax10, axiom, ![X,Y,U]: (p(south, X, south, Y, U) => p(north, X, north, Y, take_goat(U)))).
fof(ax11, axiom, ![X1,Y1,V]: (p(north, X1, north, Y1, V) => p(south, X1, south, Y1, take_goat(V)))).
fof(ax12, axiom, ![T8]: (p(south, north, south, south, T8) => p(north, north, south, north, take_cabbage(T8)))).
fof(ax13, axiom, ![T9]: (p(north, north, south, north, T9) => p(south, north, south, south, take_cabbage(T9)))).
fof(ax14, axiom, ![U1]: (p(south, south, north, south, U1) => p(north, south, north, north, take_cabbage(U1)))).
fof(ax15, axiom, ![V1]: (p(north, south, north, north, V1) => p(south, south, north, south, take_cabbage(V1)))).
fof(c16, conjecture, ?[Z]: p(north, north, north, north, Z)).
