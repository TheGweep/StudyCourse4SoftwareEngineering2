domains
    god=integer
    name, avtor, pays=string
    
predicates
    d_L(god, name, avtor, pays)
    quest_1(pays)
    
clauses
    d_L(1959, "LISP",       "�������",   "���").
    d_L(1968, "INTER_LISP", "���⥫쬠�", "���").
    d_L(1968,  "LISP_A",    "��������",   "�����").
    d_L(1976,  "VLISP",     "�����",     "�࠭��").
    d_L(1973,  "LISP 70",   "���᫥�",    "���").
    d_L(1973,  "MLISP-2",   "����",       "���").
    d_L(1973,  "QLISP",     "���졥�",    "���").
    d_L(1974,  "LISPMACHINE LISP","����ॡ","���").
    d_L(1974,  "MACLISP","��","���").
    d_L(1976,  "VLISP","�����","�࠭��").
    d_L(1979,  "CONCURENT LISP","���-���","������").
    d_L(1982,  "LE_LISP",   "INRIA",      "�࠭��").
    d_L(1982,  "COMMON LISP",   "�⨫", "���").
    d_L(1982,  "GLISP",   "�����",  "���").

    quest_1(Pays):-
       d_L(_, N1, _, X),
       d_L(_, N2, _, Y),
       X=Y, N1 <> N2, Pays=X.
       
       