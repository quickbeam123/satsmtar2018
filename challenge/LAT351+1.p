%------------------------------------------------------------------------------
% File     : LAT351+1 : TPTP v7.0.0. Released v3.4.0.
% Domain   : Lattice Theory
% Problem  : Representation Theorem for Free Continuous Lattices T18
% Version  : [Urb08] axioms : Especial.
% English  :

% Refs     : [Rud96] Rudnicki (1998), Representation Theorem for Free Conti
%          : [Urb07] Urban (2007), MPTP 0.2: Design, Implementation, and In
%          : [Urb08] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb08]
% Names    : t18_waybel22 [Urb08]

% Status   : Theorem
% Rating   : 0.35 v7.0.0, 0.37 v6.4.0, 0.42 v6.3.0, 0.38 v6.2.0, 0.44 v6.1.0, 0.57 v6.0.0, 0.52 v5.5.0, 0.70 v5.4.0, 0.71 v5.3.0, 0.74 v5.2.0, 0.60 v5.1.0, 0.57 v5.0.0, 0.54 v4.1.0, 0.52 v4.0.1, 0.57 v4.0.0, 0.54 v3.7.0, 0.60 v3.5.0, 0.63 v3.4.0
% Syntax   : Number of formulae    :  121 (  25 unit)
%            Number of atoms       :  679 (  17 equality)
%            Maximal formula depth :   22 (   6 average)
%            Number of connectives :  658 ( 100   ~;   1   |; 449   &)
%                                         (   5 <=>; 103  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   44 (   1 propositional; 0-3 arity)
%            Number of functors    :   17 (   1 constant; 0-2 arity)
%            Number of variables   :  168 (   1 sgn; 141   !;  27   ?)
%            Maximal term depth    :    5 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Normal version: includes the axioms (which may be theorems from
%            other articles) and background that are possibly necessary.
%          : Translated by MPTP from the Mizar Mathematical Library 4.48.930.
%          : The problem encoding is based on set theory.
%------------------------------------------------------------------------------
fof(t18_waybel22,conjecture,(
    ! [A,B] :
      ( ( v2_orders_2(B)
        & v3_orders_2(B)
        & v4_orders_2(B)
        & v1_lattice3(B)
        & v2_lattice3(B)
        & v3_lattice3(B)
        & v3_waybel_3(B)
        & l1_orders_2(B) )
     => ! [C] :
          ( ( r1_waybel22(B,C)
            & k1_card_1(C) = k1_card_1(A) )
         => r5_waybel_1(B,k2_yellow_1(k9_waybel_0(k3_yellow_1(A)))) ) ) )).

fof(abstractness_v1_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( v1_orders_2(A)
       => A = g1_orders_2(u1_struct_0(A),u1_orders_2(A)) ) ) )).

fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] :
      ( r2_hidden(A,B)
     => ~ r2_hidden(B,A) ) )).

fof(cc10_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_lattice3(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v24_waybel_0(A)
          & v25_waybel_0(A) ) ) ) )).

fof(cc11_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v25_waybel_0(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v1_yellow_0(A) ) ) ) )).

fof(cc12_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v1_yellow_0(A)
          & v24_waybel_0(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v3_lattice3(A)
          & v1_yellow_0(A)
          & v2_yellow_0(A)
          & v3_yellow_0(A) ) ) ) )).

fof(cc13_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v4_orders_2(A)
          & v25_waybel_0(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v4_orders_2(A)
          & v2_lattice3(A) ) ) ) )).

fof(cc14_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v4_orders_2(A)
          & v2_yellow_0(A)
          & v25_waybel_0(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_yellow_0(A) ) ) ) )).

fof(cc1_funct_1,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => v1_funct_1(A) ) )).

fof(cc1_lattice3,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( v1_lattice3(A)
       => ~ v3_struct_0(A) ) ) )).

fof(cc1_relset_1,axiom,(
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => v1_relat_1(C) ) )).

fof(cc1_setfam_1,axiom,(
    ! [A] :
      ( ( ~ v1_xboole_0(A)
        & v1_setfam_1(A) )
     => ! [B] :
          ( m1_subset_1(B,A)
         => ~ v1_xboole_0(B) ) ) )).

fof(cc1_waybel22,axiom,(
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v2_yellow_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(k2_yellow_1(k9_waybel_0(A))))
         => ~ v1_xboole_0(B) ) ) )).

fof(cc1_waybel_8,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v2_waybel_8(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v2_yellow_0(A)
          & v24_waybel_0(A)
          & v2_waybel_3(A)
          & v3_waybel_3(A) ) ) ) )).

fof(cc1_yellow_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v3_lattice3(A) )
       => ( ~ v3_struct_0(A)
          & v1_lattice3(A)
          & v2_lattice3(A) ) ) ) )).

fof(cc1_yellow_7,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v1_waybel_5(A) )
       => ( ~ v3_struct_0(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v3_lattice3(A)
          & v1_yellow_0(A)
          & v2_yellow_0(A)
          & v3_yellow_0(A) ) ) ) )).

fof(cc2_funct_1,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_xboole_0(A)
        & v1_funct_1(A) )
     => ( v1_relat_1(A)
        & v1_funct_1(A)
        & v2_funct_1(A) ) ) )).

fof(cc2_lattice3,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( v2_lattice3(A)
       => ~ v3_struct_0(A) ) ) )).

fof(cc2_waybel_5,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v3_realset2(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_waybel_5(A) ) ) ) )).

fof(cc2_waybel_8,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v2_waybel_8(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v24_waybel_0(A)
          & v1_waybel_8(A) ) ) ) )).

fof(cc2_yellow_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_realset2(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v3_lattice3(A) ) ) ) )).

fof(cc3_waybel_5,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v1_waybel_5(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v3_lattice3(A)
          & v1_yellow_0(A)
          & v2_yellow_0(A)
          & v3_yellow_0(A)
          & v24_waybel_0(A)
          & v25_waybel_0(A)
          & v2_waybel_3(A)
          & v3_waybel_3(A) ) ) ) )).

fof(cc3_waybel_8,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v3_waybel_8(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v2_yellow_0(A)
          & v24_waybel_0(A)
          & v2_waybel_3(A)
          & v3_waybel_3(A)
          & v1_waybel_8(A)
          & v2_waybel_8(A) ) ) ) )).

fof(cc3_yellow_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v3_lattice3(A) )
       => ( ~ v3_struct_0(A)
          & v3_yellow_0(A) ) ) ) )).

fof(cc4_waybel_5,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v1_waybel_5(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v9_waybel_1(A) ) ) ) )).

fof(cc4_waybel_8,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v3_realset2(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v1_lattice3(A)
          & v2_lattice3(A)
          & v2_yellow_0(A)
          & v24_waybel_0(A)
          & v2_waybel_3(A)
          & v3_waybel_3(A)
          & v1_waybel_8(A)
          & v2_waybel_8(A)
          & v3_waybel_8(A) ) ) ) )).

fof(cc4_yellow_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( v3_yellow_0(A)
       => ( v1_yellow_0(A)
          & v2_yellow_0(A) ) ) ) )).

fof(cc5_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v3_realset2(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v16_waybel_0(A) ) ) ) )).

fof(cc5_yellow_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( v1_yellow_0(A)
          & v2_yellow_0(A) )
       => v3_yellow_0(A) ) ) )).

fof(cc9_waybel_0,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => ( ( v2_orders_2(A)
          & v1_lattice3(A)
          & v24_waybel_0(A) )
       => ( ~ v3_struct_0(A)
          & v2_orders_2(A)
          & v1_lattice3(A)
          & v2_yellow_0(A) ) ) ) )).

fof(d18_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => k7_waybel_0(A,B) = k5_waybel_0(A,k1_struct_0(A,B)) ) ) )).

fof(d24_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & v3_orders_2(A)
        & l1_orders_2(A) )
     => k9_waybel_0(A) = a_1_1_waybel_0(A) ) )).

fof(d2_waybel22,axiom,(
    ! [A] : k1_waybel22(A) = a_1_0_waybel22(A) )).

fof(dt_g1_orders_2,axiom,(
    ! [A,B] :
      ( m1_relset_1(B,A,A)
     => ( v1_orders_2(g1_orders_2(A,B))
        & l1_orders_2(g1_orders_2(A,B)) ) ) )).

fof(dt_k1_card_1,axiom,(
    ! [A] : v1_card_1(k1_card_1(A)) )).

fof(dt_k1_struct_0,axiom,(
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(k1_struct_0(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k1_waybel22,axiom,(
    ! [A] : m1_subset_1(k1_waybel22(A),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(k3_yellow_1(A))))) )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_yellow_1,axiom,(
    ! [A] :
      ( v1_orders_2(k2_yellow_1(A))
      & l1_orders_2(k2_yellow_1(A)) ) )).

fof(dt_k2_zfmisc_1,axiom,(
    $true )).

fof(dt_k3_yellow_1,axiom,(
    ! [A] :
      ( v1_orders_2(k3_yellow_1(A))
      & l1_orders_2(k3_yellow_1(A)) ) )).

fof(dt_k5_waybel_0,axiom,(
    ! [A,B] :
      ( ( l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => m1_subset_1(k5_waybel_0(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k7_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => m1_subset_1(k7_waybel_0(A,B),k1_zfmisc_1(u1_struct_0(A))) ) )).

fof(dt_k9_waybel_0,axiom,(
    $true )).

fof(dt_l1_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => l1_struct_0(A) ) )).

fof(dt_l1_struct_0,axiom,(
    $true )).

fof(dt_m1_relset_1,axiom,(
    $true )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(dt_m2_relset_1,axiom,(
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
     => m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) ) )).

fof(dt_u1_orders_2,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => m2_relset_1(u1_orders_2(A),u1_struct_0(A),u1_struct_0(A)) ) )).

fof(dt_u1_struct_0,axiom,(
    $true )).

fof(existence_l1_orders_2,axiom,(
    ? [A] : l1_orders_2(A) )).

fof(existence_l1_struct_0,axiom,(
    ? [A] : l1_struct_0(A) )).

fof(existence_m1_relset_1,axiom,(
    ! [A,B] :
    ? [C] : m1_relset_1(C,A,B) )).

fof(existence_m1_subset_1,axiom,(
    ! [A] :
    ? [B] : m1_subset_1(B,A) )).

fof(existence_m2_relset_1,axiom,(
    ! [A,B] :
    ? [C] : m2_relset_1(C,A,B) )).

fof(fc10_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => ( ~ v1_xboole_0(k7_waybel_0(A,B))
        & v2_waybel_0(k7_waybel_0(A,B),A) ) ) )).

fof(fc10_waybel_8,axiom,(
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & v24_waybel_0(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v24_waybel_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) )).

fof(fc11_waybel_8,axiom,(
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & v4_orders_2(A)
        & v2_waybel_8(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v4_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v24_waybel_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_waybel_8(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_waybel_8(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) )).

fof(fc12_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => v13_waybel_0(k5_waybel_0(A,B),A) ) )).

fof(fc12_waybel_8,axiom,(
    ! [A] :
      ( ( v2_orders_2(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v3_waybel_8(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v3_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v4_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_lattice3(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_lattice3(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_yellow_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v24_waybel_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_waybel_3(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v3_waybel_3(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_waybel_8(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_waybel_8(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v3_waybel_8(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) )).

fof(fc14_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v3_orders_2(A)
        & l1_orders_2(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => v13_waybel_0(k7_waybel_0(A,B),A) ) )).

fof(fc14_waybel_8,axiom,(
    ! [A] :
      ( ~ v3_struct_0(k3_yellow_1(A))
      & v1_orders_2(k3_yellow_1(A))
      & v2_orders_2(k3_yellow_1(A))
      & v3_orders_2(k3_yellow_1(A))
      & v4_orders_2(k3_yellow_1(A))
      & v1_lattice3(k3_yellow_1(A))
      & v2_lattice3(k3_yellow_1(A))
      & v3_lattice3(k3_yellow_1(A))
      & v1_yellow_0(k3_yellow_1(A))
      & v2_yellow_0(k3_yellow_1(A))
      & v3_yellow_0(k3_yellow_1(A))
      & v24_waybel_0(k3_yellow_1(A))
      & v25_waybel_0(k3_yellow_1(A))
      & v2_waybel_1(k3_yellow_1(A))
      & v9_waybel_1(k3_yellow_1(A))
      & v10_waybel_1(k3_yellow_1(A))
      & v11_waybel_1(k3_yellow_1(A))
      & v2_waybel_3(k3_yellow_1(A))
      & v3_waybel_3(k3_yellow_1(A))
      & v1_waybel_8(k3_yellow_1(A))
      & v2_waybel_8(k3_yellow_1(A)) ) )).

fof(fc17_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & v3_orders_2(A)
        & l1_orders_2(A)
        & v2_waybel_0(B,A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ( v2_waybel_0(k5_waybel_0(A,B),A)
        & v13_waybel_0(k5_waybel_0(A,B),A) ) ) )).

fof(fc1_struct_0,axiom,(
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A) )
     => ~ v1_xboole_0(u1_struct_0(A)) ) )).

fof(fc1_subset_1,axiom,(
    ! [A] : ~ v1_xboole_0(k1_zfmisc_1(A)) )).

fof(fc1_waybel16,axiom,(
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v2_yellow_0(A)
        & l1_orders_2(A) )
     => ~ v1_xboole_0(k9_waybel_0(A)) ) )).

fof(fc1_waybel22,axiom,(
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v2_yellow_0(A)
        & v2_lattice3(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(k2_yellow_1(k9_waybel_0(A)))
        & v1_orders_2(k2_yellow_1(k9_waybel_0(A)))
        & v2_orders_2(k2_yellow_1(k9_waybel_0(A)))
        & v3_orders_2(k2_yellow_1(k9_waybel_0(A)))
        & v4_orders_2(k2_yellow_1(k9_waybel_0(A)))
        & v1_yellow_0(k2_yellow_1(k9_waybel_0(A)))
        & v2_yellow_0(k2_yellow_1(k9_waybel_0(A)))
        & v3_yellow_0(k2_yellow_1(k9_waybel_0(A)))
        & v24_waybel_0(k2_yellow_1(k9_waybel_0(A)))
        & v25_waybel_0(k2_yellow_1(k9_waybel_0(A)))
        & v1_lattice3(k2_yellow_1(k9_waybel_0(A)))
        & v2_lattice3(k2_yellow_1(k9_waybel_0(A)))
        & v3_lattice3(k2_yellow_1(k9_waybel_0(A)))
        & v3_waybel_3(k2_yellow_1(k9_waybel_0(A))) ) ) )).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) )).

fof(fc1_yellow_0,axiom,(
    ! [A,B] :
      ( m1_relset_1(B,k1_tarski(A),k1_tarski(A))
     => ( ~ v3_struct_0(g1_orders_2(k1_tarski(A),B))
        & v1_orders_2(g1_orders_2(k1_tarski(A),B))
        & v3_realset2(g1_orders_2(k1_tarski(A),B)) ) ) )).

fof(fc2_setfam_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ( ~ v1_xboole_0(k1_tarski(A))
        & v1_setfam_1(k1_tarski(A)) ) ) )).

fof(fc2_subset_1,axiom,(
    ! [A] : ~ v1_xboole_0(k1_tarski(A)) )).

fof(fc2_waybel16,axiom,(
    ! [A] :
      ( ( v2_orders_2(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v2_lattice3(A)
        & v2_yellow_0(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(k2_yellow_1(k9_waybel_0(A)))
        & v1_orders_2(k2_yellow_1(k9_waybel_0(A)))
        & v2_orders_2(k2_yellow_1(k9_waybel_0(A)))
        & v3_orders_2(k2_yellow_1(k9_waybel_0(A)))
        & v4_orders_2(k2_yellow_1(k9_waybel_0(A)))
        & v2_lattice3(k2_yellow_1(k9_waybel_0(A)))
        & v3_lattice3(k2_yellow_1(k9_waybel_0(A)))
        & v1_yellow_0(k2_yellow_1(k9_waybel_0(A)))
        & v24_waybel_0(k2_yellow_1(k9_waybel_0(A)))
        & v25_waybel_0(k2_yellow_1(k9_waybel_0(A))) ) ) )).

fof(fc4_subset_1,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & ~ v1_xboole_0(B) )
     => ~ v1_xboole_0(k2_zfmisc_1(A,B)) ) )).

fof(fc4_waybel_8,axiom,(
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) )).

fof(fc5_waybel_8,axiom,(
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) )).

fof(fc6_waybel_8,axiom,(
    ! [A] :
      ( ( v3_orders_2(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v3_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) )).

fof(fc7_waybel_8,axiom,(
    ! [A] :
      ( ( v4_orders_2(A)
        & l1_orders_2(A) )
     => ( v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v4_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) )).

fof(fc8_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & l1_orders_2(A)
        & ~ v1_xboole_0(B)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ~ v1_xboole_0(k5_waybel_0(A,B)) ) )).

fof(fc8_waybel_8,axiom,(
    ! [A] :
      ( ( v2_lattice3(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v2_lattice3(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) )).

fof(fc9_waybel_8,axiom,(
    ! [A] :
      ( ( v1_lattice3(A)
        & l1_orders_2(A) )
     => ( ~ v3_struct_0(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_orders_2(g1_orders_2(u1_struct_0(A),u1_orders_2(A)))
        & v1_lattice3(g1_orders_2(u1_struct_0(A),u1_orders_2(A))) ) ) )).

fof(fraenkel_a_1_0_waybel22,axiom,(
    ! [A,B] :
      ( r2_hidden(A,a_1_0_waybel22(B))
    <=> ? [C] :
          ( m1_subset_1(C,u1_struct_0(k3_yellow_1(B)))
          & A = k7_waybel_0(k3_yellow_1(B),C)
          & ? [D] :
              ( m1_subset_1(D,B)
              & C = k1_tarski(D) ) ) ) )).

fof(fraenkel_a_1_1_waybel_0,axiom,(
    ! [A,B] :
      ( ( ~ v3_struct_0(B)
        & v2_orders_2(B)
        & v3_orders_2(B)
        & l1_orders_2(B) )
     => ( r2_hidden(A,a_1_1_waybel_0(B))
      <=> ? [C] :
            ( ~ v1_xboole_0(C)
            & v2_waybel_0(C,B)
            & v13_waybel_0(C,B)
            & m1_subset_1(C,k1_zfmisc_1(u1_struct_0(B)))
            & A = C ) ) ) )).

fof(free_g1_orders_2,axiom,(
    ! [A,B] :
      ( m1_relset_1(B,A,A)
     => ! [C,D] :
          ( g1_orders_2(A,B) = g1_orders_2(C,D)
         => ( A = C
            & B = D ) ) ) )).

fof(rc10_waybel_0,axiom,(
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & v2_orders_2(A)
        & v3_orders_2(A)
        & l1_orders_2(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & v2_waybel_0(B,A)
          & v13_waybel_0(B,A) ) ) )).

fof(rc12_waybel_0,axiom,(
    ? [A] :
      ( l1_orders_2(A)
      & ~ v3_struct_0(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v16_waybel_0(A) ) )).

fof(rc13_waybel_0,axiom,(
    ? [A] :
      ( l1_orders_2(A)
      & ~ v3_struct_0(A)
      & v1_orders_2(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v1_lattice3(A)
      & v2_lattice3(A)
      & v3_lattice3(A)
      & v1_yellow_0(A)
      & v2_yellow_0(A)
      & v3_yellow_0(A)
      & v24_waybel_0(A)
      & v25_waybel_0(A) ) )).

fof(rc1_funct_1,axiom,(
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A) ) )).

fof(rc1_lattice3,axiom,(
    ? [A] :
      ( l1_orders_2(A)
      & ~ v3_struct_0(A)
      & v1_orders_2(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v3_lattice3(A) ) )).

fof(rc1_setfam_1,axiom,(
    ? [A] :
      ( ~ v1_xboole_0(A)
      & v1_setfam_1(A) ) )).

fof(rc1_subset_1,axiom,(
    ! [A] :
      ( ~ v1_xboole_0(A)
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
          & ~ v1_xboole_0(B) ) ) )).

fof(rc1_waybel_5,axiom,(
    ? [A] :
      ( l1_orders_2(A)
      & ~ v3_struct_0(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v1_lattice3(A)
      & v2_lattice3(A)
      & v1_waybel_5(A) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : v1_xboole_0(A) )).

fof(rc1_yellow_0,axiom,(
    ? [A] :
      ( l1_orders_2(A)
      & ~ v3_struct_0(A)
      & v1_orders_2(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v1_lattice3(A)
      & v2_lattice3(A)
      & v3_lattice3(A)
      & v3_realset2(A) ) )).

fof(rc1_yellow_7,axiom,(
    ? [A] :
      ( l1_orders_2(A)
      & ~ v3_struct_0(A)
      & v1_orders_2(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v1_lattice3(A)
      & v2_lattice3(A)
      & v3_lattice3(A)
      & v1_yellow_0(A)
      & v2_yellow_0(A)
      & v3_yellow_0(A)
      & v16_waybel_0(A)
      & v24_waybel_0(A)
      & v25_waybel_0(A)
      & v2_waybel_1(A)
      & v9_waybel_1(A)
      & v1_waybel_5(A)
      & v3_realset2(A) ) )).

fof(rc2_funct_1,axiom,(
    ? [A] :
      ( v1_relat_1(A)
      & v1_xboole_0(A)
      & v1_funct_1(A) ) )).

fof(rc2_lattice3,axiom,(
    ? [A] :
      ( l1_orders_2(A)
      & ~ v3_struct_0(A)
      & v1_orders_2(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v1_lattice3(A)
      & v2_lattice3(A)
      & v3_lattice3(A) ) )).

fof(rc2_subset_1,axiom,(
    ! [A] :
    ? [B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
      & v1_xboole_0(B) ) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ v1_xboole_0(A) )).

fof(rc2_yellow_0,axiom,(
    ? [A] :
      ( l1_orders_2(A)
      & ~ v3_struct_0(A)
      & v2_orders_2(A)
      & v3_orders_2(A)
      & v4_orders_2(A)
      & v1_lattice3(A)
      & v2_lattice3(A)
      & v3_lattice3(A)
      & v1_yellow_0(A)
      & v2_yellow_0(A)
      & v3_yellow_0(A) ) )).

fof(rc3_funct_1,axiom,(
    ? [A] :
      ( v1_relat_1(A)
      & v1_funct_1(A)
      & v2_funct_1(A) ) )).

fof(rc3_struct_0,axiom,(
    ? [A] :
      ( l1_struct_0(A)
      & ~ v3_struct_0(A) ) )).

fof(rc5_struct_0,axiom,(
    ! [A] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B) ) ) )).

fof(redefinition_k1_struct_0,axiom,(
    ! [A,B] :
      ( ( ~ v3_struct_0(A)
        & l1_struct_0(A)
        & m1_subset_1(B,u1_struct_0(A)) )
     => k1_struct_0(A,B) = k1_tarski(B) ) )).

fof(redefinition_m2_relset_1,axiom,(
    ! [A,B,C] :
      ( m2_relset_1(C,A,B)
    <=> m1_relset_1(C,A,B) ) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : r1_tarski(A,A) )).

fof(reflexivity_r5_waybel_1,axiom,(
    ! [A,B] :
      ( ( l1_orders_2(A)
        & l1_orders_2(B) )
     => r5_waybel_1(A,A) ) )).

fof(t10_waybel22,axiom,(
    ! [A] : k1_card_1(k1_waybel22(A)) = k1_card_1(A) )).

fof(t16_waybel22,axiom,(
    ! [A] : r1_waybel22(k2_yellow_1(k9_waybel_0(k3_yellow_1(A))),k1_waybel22(A)) )).

fof(t17_waybel22,axiom,(
    ! [A] :
      ( ( v2_orders_2(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v1_lattice3(A)
        & v2_lattice3(A)
        & v3_lattice3(A)
        & v3_waybel_3(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( ( v2_orders_2(B)
            & v3_orders_2(B)
            & v4_orders_2(B)
            & v1_lattice3(B)
            & v2_lattice3(B)
            & v3_lattice3(B)
            & v3_waybel_3(B)
            & l1_orders_2(B) )
         => ! [C,D] :
              ( ( r1_waybel22(A,C)
                & r1_waybel22(B,D)
                & k1_card_1(C) = k1_card_1(D) )
             => r5_waybel_1(A,B) ) ) ) )).

fof(t1_subset,axiom,(
    ! [A,B] :
      ( r2_hidden(A,B)
     => m1_subset_1(A,B) ) )).

fof(t2_subset,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,B)
     => ( v1_xboole_0(B)
        | r2_hidden(A,B) ) ) )).

fof(t2_tarski,axiom,(
    ! [A,B] :
      ( ! [C] :
          ( r2_hidden(C,A)
        <=> r2_hidden(C,B) )
     => A = B ) )).

fof(t3_subset,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,k1_zfmisc_1(B))
    <=> r1_tarski(A,B) ) )).

fof(t4_subset,axiom,(
    ! [A,B,C] :
      ( ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C)) )
     => m1_subset_1(A,C) ) )).

fof(t5_subset,axiom,(
    ! [A,B,C] :
      ~ ( r2_hidden(A,B)
        & m1_subset_1(B,k1_zfmisc_1(C))
        & v1_xboole_0(C) ) )).

fof(t6_boole,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => A = k1_xboole_0 ) )).

fof(t7_boole,axiom,(
    ! [A,B] :
      ~ ( r2_hidden(A,B)
        & v1_xboole_0(B) ) )).

fof(t8_boole,axiom,(
    ! [A,B] :
      ~ ( v1_xboole_0(A)
        & A != B
        & v1_xboole_0(B) ) )).
%------------------------------------------------------------------------------
