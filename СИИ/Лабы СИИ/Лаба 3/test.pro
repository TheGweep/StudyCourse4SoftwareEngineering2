/*   ���������:  ������� �� ���������                         */
/*   ����:       test.pro                                                            */
/*   ����������: ������������ ������ ����������             */
/*              �������. ��� ������������� �������,                 */
/*              ������������ �� ��������                                    */
/*   ���������:  ��� ������� ��� ������������� ��������.   */
/*              ������� ���������� ���������                  */
/*             ������������� ������ ��� ������                       */
/*             �������                                                                     */

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
          /* ������� ����������������� ���������� */
     do_expert :-
          makewindow (1,112,6,"���������� �������",1,12,22,58),
          nl,write ("         * * * * * * * * * * * * * * * * * *  * * * * *"),
          nl,write ("         *         ����� ��������         *"),
          nl,write ("         *                                                                  *"),
          nl,write ("         *          � � � � � � � � !                        *"),
          nl,write ("         *                                                                   *"),
          nl,write ("         *   �p� ������ �� ���p��� ����p����     *"),
          nl,write ("         *              'yes' ���  'no'.                              *"),
          nl,write ("         * * * * * * * * * * * * * * * * * * * * ** * *"),
          nl,nl,
          consulting,
          write ("������� ����� ������� ."),nl,
          readchar (_),
          removewindow,
          exit.
     consulting :- 
          dog (X),!,nl,
          write ("        �������  : ",X,"."),nl,
          clear_facts.
     consulting :-
          nl,write ("        �p������, � �� ���� ��� ������ ! "),
          clear_facts.
     in_out (Y) :- 
          write ("      ���p�� :- ������� ����� ",Y," ?"),
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
          
	diagnoz(�����������)
	priznak(���� ���� ��������������)

	diagnoz(��������)
	priznak(���� ���� �����������)
	priznak(�������)
	priznak(��������� ������� ���������)
	
	diagnoz(��������� ��� ������� ������)
	priznak(���� ���� �����������)
	priznak(�������)
	priznak(��� �������� ������� ���������)

	diagnoz(������ ��� ��������)
	priznak(���� ���� �����������)
	priznak(��������)
	priznak(������������)

	diagnoz(������)
	priznak(���� ���� �����������)
	priznak(��������)
	priznak(������ ����)

          
     /*  � �. �. */
                                                  
     /*   �����  ���������    */               

