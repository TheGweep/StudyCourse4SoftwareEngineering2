/*   �ணࠬ��:  ��ᯥ�� �� ��த�� ᮡ��                          */
/*   ����:       Prim1.pro                                                            */
/*   �����祭��: ���������� ࠡ��� �ᯥ�⭮�             */
/*              ��⥬�. �� �த�樮���� ��⥬�,                 */
/*              ����������� �� �ࠢ����                                    */
/*   ����砭��:  �� ��⥬� ��� �����䨪�樨 ��த�   */
/*             ᮡ��. ���⥬� �ᯮ���� ������⢮                  */
/*             �த�樮���� �ࠢ�� ��� �뢮��                       */
/*             �襭��                                                                     */

     domains
     database
          xpositive (symbol)
          xnegative (symbol)
     predicates
          do_expert
          consulting
          in_out (symbol)
          dog (symbol)
          priznak (symbol)
          negative (symbol)
          remember (symbol,symbol)
          clear_facts
     goal
          do_expert.
          
     clauses
          /* ���⥬� ���짮��⥫�᪮�� ����䥩� (���) */
     do_expert :-
          makewindow (1,112,6,"���������� �������",1,12,22,58),
          nl,write ("         * * * * * * * * * * * * * * * * * *  * * * * *"),
          nl,write ("         *         ����� ������ �����          *"),
          nl,write ("         *                                                                  *"),
          nl,write ("         *          � � � � � � � � !                        *"),
          nl,write ("         *                                                                   *"),
          nl,write ("         *   �p� �⢥� �� ���p��� ����p���     *"),
          nl,write ("         *              'yes' ���  'no'.                              *"),
          nl,write ("         * * * * * * * * * * * * * * * * * * * * ** * *"),
          nl,nl,
          consulting,
          write ("������ ���� ������� ."),nl,
          readchar (_),
          removewindow,
          exit.
     consulting :- 
          dog (X),!,nl,
          write ("        ������ ����� ��p��� : ",X,"."),nl,
          clear_facts.
     consulting :-
          nl,write ("        �p����, � �� ���� ��� ������ ! "),
          clear_facts.
     in_out (Y) :- 
          write ("      ���p�� :- ������ ����� ",Y," ?"),
          readln (Reply),
          remember (Y,Reply).
               
          /*         ��������  ������          */
     priznak (Y) :-
          xpositive (Y),!.      
     priznak (Y) :-
          not (negative (Y)),
          in_out (Y).
     negative (Y) :-
          xnegative (Y).
     remember (Y,yes) :-
          asserta (xpositive (Y)).
     remember (Y,no) :-
          asserta (xnegative (Y)),
          fail.
     clear_facts :-
          retract (xnegative (_)),
          fail.
     clear_facts :-
          retract (xpositive (_)),
          fail.
                                         
          /*     �������������  �������        */
          
     dog ("������᪨� ��줮�") :-
          priznak ("�p��� ��p����"),
          priznak ("p��� ����� 50 �"),
          priznak ("墮�� �������ᠦ����"),
          priznak ("�p���p �p�訩"),!.
     dog ("�����") :-
          priznak ("�p��� ��p����"),
          priznak ("p��� ����� 50 �"),
          priznak ("�� ������"),
          priznak ("�p���p �p�訩"),!.
  /*   dog ("���") :-
          priznak ("�p��� ��p���"),
          priznak ("),
          positive (has,"good natured personality"),
          positive (has,"weight over 100 lb"),!.
     dog_is ("American Foxhound") :-
          it_is ("short-haired dog"),
          positive (has,"heigtht under 30 inches"),
          positive (has,"longer ears"),
          positive (has,"good natured personality"),!.
     dog_is ("Cocker Spaniel") :-
          it_is ("long-haired dog"),
          positive (has,"height under 22 inches"),
          positive (has,"low-set teil"),
          positive (has,"longer ears"),
          positive (has,"good natured personality"),!.
     dog_is ("Irish Setter") :-
          it_is ("long-haired dog"),
          positive (has,"height under 30 inches"),
          positive (has,"longer ears"),!.
     dog_is ("Collie") :-
          it_is ("long-haired dog"),
          positive (has,"height under 30 inches"),
          positive (has,"low-set tail"),
          positive (has,"good natured personality"),!.
     dog_is ("St. Bernard") :-
          it_is ("long-haired dog"),
          positive (has,"low-set tail"),
          positive (has,"good natured personality"),
          positive (has,"weight over 100 lb"),!. */
 /*     it_is ("�p��� ��p����") :-
          positive ("�p��� ��p����"),!.
        it_is ("long-haired dog") :-
          positive (has,"long-haired"),!. */	
                                                  
     /*   �����  ���������    */               

