%------------------------------------------------------------------------------
% File     : SWW047=1 : TPTP v7.0.0. Released v5.0.0.
% Domain   : Software Verification
% Problem  : Backward simplification: node deletion 2640
% Version  : Especial.
% English  : A problem extracted from model checking a safety problem (no
%            violation of mutual exclusion) for a parameterized system (a
%            variant of the protocol due to Szymanski).

% Refs     : [MP90]  Manna & Pnueli (1990), Tools and Rules for the Practic
%          : [Ran10] Ranise (2010), Email to Geoff Sutcliffe
% Source   : [Ran10]
% Names    : sz2_fixpoint_2640 [Ran10]

% Status   : Theorem
% Rating   : 0.17 v7.0.0, 0.14 v6.4.0, 0.00 v6.3.0, 0.14 v6.2.0, 0.25 v6.1.0, 0.56 v6.0.0, 0.71 v5.5.0, 0.44 v5.4.0, 0.50 v5.3.0, 0.60 v5.2.0, 0.67 v5.1.0, 0.40 v5.0.0
% Syntax   : Number of formulae    :    9 (   0 unit;   8 type)
%            Number of atoms       : 6605 (5337 equality)
%            Maximal formula depth :  508 (  58 average)
%            Number of connectives : 10079 (3475   ~;   0   |;6603   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :   13 (  10 propositional; 0-2 arity)
%            Number of functors    :   20 (  18 constant; 0-1 arity)
%            Number of variables   : 1900 (   0 sgn;1900   !;   0   ?)
%                                         (1900   :;   0  !>;   0  ?*)
%            Maximal term depth    :    2 (   1 average)
%            Arithmetic symbols    : 1914 (   2 prd;   0 fun;  12 num;1900 var)
% SPC      : TF0_THM_EQU_ARI

% Comments : Considered a relatively simple benchmark for infinite state model
%            checkers.
%          : In the SMT AUFLIA logic. Generated using the MCMT system -
%            http://homes.dsi.unimi.it/~ghilardi/mcmt/
%------------------------------------------------------------------------------
tff(z1_type,type,(
    z1: $int )).

tff(z2_type,type,(
    z2: $int )).

tff(z3_type,type,(
    z3: $int )).

tff(z4_type,type,(
    z4: $int )).

tff(z5_type,type,(
    z5: $int )).

tff(z6_type,type,(
    z6: $int )).

tff(a_type,type,(
    a: $int > $int )).

tff(b_type,type,(
    b: $int > $int )).

tff(0,conjecture,
    ( ( ! [Z1: $int] :
          ( $lesseq(1,a(Z1))
          & $lesseq(a(Z1),12) )
      & ! [Z1: $int] :
          ( $lesseq(1,b(Z1))
          & $lesseq(b(Z1),5) )
      & $true
      & z1 != z2
      & z1 != z3
      & z1 != z4
      & z1 != z5
      & z1 != z6
      & z2 != z3
      & z2 != z4
      & z2 != z5
      & z2 != z6
      & z3 != z4
      & z3 != z5
      & z3 != z6
      & z4 != z5
      & z4 != z6
      & z5 != z6
      & ! [Z1: $int,Z2: $int] :
          ~ ( Z1 != Z2
            & a(Z1) = 10
            & a(Z2) = 10 )
      & ! [Z1: $int,Z2: $int] :
          ~ ( Z1 != Z2
            & a(Z1) = 9
            & a(Z2) = 10
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int] :
          ~ ( Z1 != Z2
            & a(Z1) = 8
            & a(Z2) = 10
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 7
            & a(Z2) = 10
            & $less(b(Z2),3)
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 6
            & a(Z2) = 10
            & $less(b(Z2),3)
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 7
            & a(Z2) = 10
            & a(Z3) = 8
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 5
            & a(Z2) = 10
            & b(Z2) = 2
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & $less(b(Z2),3)
            & b(Z3) = 5
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 6
            & a(Z2) = 10
            & a(Z3) = 8
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 7
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 4
            & a(Z2) = 10
            & b(Z2) = 2
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 8
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 8
            & $less(b(Z2),3)
            & b(Z3) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 8
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 6
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 7
            & a(Z2) = 10
            & a(Z3) = 6
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 8
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 8
            & $less(b(Z2),3)
            & b(Z3) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z3) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 6
            & a(Z2) = 10
            & a(Z3) = 6
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 7
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 7
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 8
            & $less(b(Z1),4)
            & b(Z2) = 2
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 6
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 8
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z3) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z3) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 7
            & $less(b(Z2),3)
            & b(Z3) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 6
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z3) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 6
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 6
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 6
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 7
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 8
            & b(Z2) = 2
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & $less(b(Z1),4)
            & b(Z2) = 2
            & $less(b(Z3),4)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 6
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 8
            & $less(b(Z2),3)
            & b(Z3) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z3) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z3) = 2
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 6
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 8
            & b(Z2) = 2
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z2) = 2
            & $less(b(Z3),4)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 8
            & $less(b(Z2),3)
            & b(Z3) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z3) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & $less(b(Z2),3)
            & b(Z3) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z2) = 2
            & $less(b(Z3),4)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 8
            & b(Z2) = 2
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z3) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & $less(b(Z2),3)
            & b(Z3) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 8
            & $less(b(Z2),3)
            & b(Z3) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z2) = 2
            & $less(b(Z3),4)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z3) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & $less(b(Z2),3)
            & b(Z3) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 6
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z2 != Z3
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z1) = 5
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & $less(b(Z2),3)
            & b(Z3) = 5
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 2
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 8
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 7
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 7
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 1
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 2
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 8
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 6
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 6
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 7
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 7
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 1
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 12
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 2
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(b(Z4),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 8
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 2
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 2
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 6
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 6
            & $less(b(Z1),4)
            & b(Z2) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 8
            & $less(b(Z1),4)
            & b(Z2) = 2
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 8
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z3) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 6
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 6
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 7
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 7
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 1
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(b(Z4),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 12
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 8
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 2
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 2
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 1
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & b(Z2) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 8
            & b(Z2) = 2
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 8
            & $less(b(Z2),3)
            & b(Z3) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 2
            & b(Z2) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & $less(b(Z1),4)
            & b(Z2) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 8
            & $less(b(Z1),4)
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 6
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 6
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 7
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 12
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(b(Z4),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z5) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 2
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 2
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 2
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 8
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 1
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 12
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & b(Z2) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 8
            & b(Z2) = 2
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 8
            & $less(b(Z2),3)
            & b(Z3) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 2
            & b(Z2) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z2) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 8
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 4
            & $less(b(Z1),4)
            & b(Z2) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 8
            & $less(b(Z1),4)
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 7
            & $less(b(Z1),4)
            & b(Z2) = 2
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 6
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & $less(b(Z4),4)
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z5) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 1
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 2
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 1
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 2
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 2
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 12
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 1
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z4) = 5
            & b(Z5) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 6
            & b(Z2) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 8
            & b(Z2) = 2
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 8
            & $less(b(Z2),3)
            & b(Z3) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 2
            & b(Z2) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z2) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 8
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z2) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 8
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 7
            & b(Z2) = 2
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 8
            & $less(b(Z1),4)
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 7
            & $less(b(Z1),4)
            & b(Z2) = 2
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 1
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 12
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 11
            & b(Z1) = 2
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 1
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 12
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 6
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z4) = 5
            & b(Z5) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 12
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z5) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 2
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 2
            & b(Z2) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z2) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 8
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z2) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 8
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 7
            & b(Z2) = 2
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 8
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 7
            & b(Z2) = 2
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 7
            & $less(b(Z1),4)
            & b(Z2) = 2
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 12
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 11
            & b(Z1) = 2
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 11
            & b(Z1) = 2
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 12
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & b(Z5) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z4) = 5
            & b(Z5) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 1
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z4) = 5
            & b(Z5) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z5) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z2) = 2
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 8
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 7
            & b(Z2) = 2
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 8
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 7
            & b(Z2) = 2
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 7
            & b(Z2) = 2
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 11
            & b(Z1) = 2
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z4) = 5
            & b(Z5) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & b(Z5) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 4
            & b(Z1) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z4) = 5
            & b(Z5) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 12
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 11
            & b(Z1) = 2
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & b(Z5) = 2
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z5) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 8
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 8
            & b(Z2) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 7
            & b(Z2) = 2
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 7
            & b(Z2) = 2
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z4) = 5
            & b(Z5) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z4) = 5
            & b(Z5) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 2
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 11
            & b(Z1) = 2
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z5) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 7
            & b(Z2) = 2
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z4) = 5
            & b(Z5) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 1
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 12
            & b(Z1) = 5
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z4) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 11
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z2 != Z3
            & Z2 != Z4
            & Z3 != Z4
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 11
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & b(Z4) = 5
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 6
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z4) = 2
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z5) = 8
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & $less(b(Z2),3)
            & b(Z4) = 2
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z5) = 8
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & a(Z5) = 8
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 2
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z4) = 2
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z5) = 8
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 5
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & a(Z5) = 8
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & $less(b(Z2),3)
            & b(Z4) = 2
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z5) = 8
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & a(Z5) = 8
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 1
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & a(Z5) = 8
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 2
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z5) = 8
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & a(Z5) = 8
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 4
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z4) = 2
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z5) = 8
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z5) = 7
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z3) = 5
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 4
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 11
            & a(Z5) = 8
            & $less(b(Z1),3)
            & $less(b(Z2),3)
            & $less(b(Z3),3)
            & $less(Z2,Z1)
            & $less(Z4,Z1)
            & $less(Z4,Z2)
            & $less(Z4,Z3) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & a(Z5) = 8
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 6
            & $less(b(Z2),3)
            & b(Z4) = 2
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z5) = 8
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & a(Z5) = 8
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 12
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & a(Z5) = 8
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z4) = 2
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 5
            & $less(b(Z2),3)
            & b(Z4) = 2
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z5) = 8
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & a(Z5) = 8
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & b(Z1) = 2
            & $less(b(Z2),3)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 1
            & a(Z5) = 8
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 4
            & $less(b(Z2),3)
            & b(Z4) = 2
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z5) = 8
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z5) = 7
            & $less(b(Z2),3)
            & b(Z3) = 5
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & a(Z5) = 8
            & b(Z1) = 2
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & a(Z5) = 7
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z3) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 1
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z4) = 2
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z4) = 2
            & a(Z5) = 8
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 4
            & a(Z5) = 8
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 3
            & a(Z2) = 10
            & a(Z3) = 5
            & a(Z5) = 7
            & $less(b(Z1),4)
            & $less(b(Z2),3)
            & b(Z3) = 5
            & b(Z4) = 2
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 1
            & $less(b(Z2),3)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 1
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 1
            & a(Z5) = 8
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 2
            & $less(b(Z2),3)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 12
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 2
            & a(Z5) = 8
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 6
            & a(Z4) = 12
            & $less(b(Z2),3)
            & b(Z5) = 5
            & $less(Z2,Z1) )
      & ! [Z1: $int,Z2: $int,Z3: $int,Z4: $int,Z5: $int] :
          ~ ( Z1 != Z2
            & Z1 != Z3
            & Z1 != Z4
            & Z1 != Z5
            & Z2 != Z3
            & Z2 != Z4
            & Z2 != Z5
            & Z3 != Z4
            & Z3 != Z5
            & Z4 != Z5
            & a(Z1) = 2
            & a(Z2) = 10
            & a(Z3) = 7
            & a(Z4) = 12
            & a(Z5) = 8
            & $less(b(Z2),3)
            & $less(b(Z3),4)
            & $less(Z2,Z1) ) )
   => ~ ( a(z1) = 2
        & a(z2) = 10
        & a(z3) = 5
        & a(z4) = 2
        & $less(b(z2),3)
        & b(z4) = 5
        & b(z5) = 2
        & $less(z2,z1) ) )).

%------------------------------------------------------------------------------
