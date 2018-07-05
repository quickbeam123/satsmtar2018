%--------------------------------------------------------------------------
% File     : LCL337-3 : TPTP v7.0.0. Released v2.3.0.
% Domain   : Logic Calculi (Propositional)
% Problem  : Principia Mathematica 5.4
% Version  : [WR27] axioms.
% English  :

% Refs     : [WR27]  Whitehead & Russell (1927), Principia Mathematica
% Source   : [WR27]
% Names    : Problem 5.4 [WR27]

% Status   : Unsatisfiable
% Rating   : 0.57 v6.3.0, 0.50 v6.2.0, 0.00 v6.1.0, 0.40 v6.0.0, 0.67 v5.5.0, 0.62 v5.4.0, 0.60 v5.3.0, 0.58 v5.2.0, 0.62 v5.1.0, 0.57 v4.1.0, 0.56 v4.0.1, 0.50 v4.0.0, 0.67 v3.5.0, 0.50 v3.3.0, 0.57 v3.2.0, 0.43 v3.1.0, 0.67 v2.6.0, 0.43 v2.5.0, 0.20 v2.4.0, 0.67 v2.3.0
% Syntax   : Number of clauses     :   11 (   0 non-Horn;   9 unit;   3 RR)
%            Number of atoms       :   14 (   3 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    3 (   0 propositional; 1-2 arity)
%            Number of functors    :    7 (   2 constant; 0-2 arity)
%            Number of variables   :   20 (   1 singleton)
%            Maximal term depth    :    4 (   3 average)
% SPC      : CNF_UNS_RFO_SEQ_HRN

% Comments :
%--------------------------------------------------------------------------
%----Include axioms of propositional logic
include('Axioms/LCL004-0.ax').
include('Axioms/LCL004-1.ax').
include('Axioms/LCL004-2.ax').
%--------------------------------------------------------------------------
cnf(prove_this,negated_conjecture,
    ( ~ theorem(equivalent(implies(p,implies(p,q)),implies(p,q))) )).

%--------------------------------------------------------------------------
