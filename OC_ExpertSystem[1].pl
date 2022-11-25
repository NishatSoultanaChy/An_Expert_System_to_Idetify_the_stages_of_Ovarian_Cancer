ready:-
    nl,nl,
    write("If you want to Know the stage of the ovarian cancer then-"),
    nl,
    write("Just answer the following question using yes/no"),
    nl,
    run.



run:-
    q12-> (q14->(showResult("Stage_IVB")
                );
              q13->
                  (showResult("Stage_IVA")
		);
               wrong()
                    );


    q8->(q11->(showResult("Stage_IIIC")
              );
              q10->(showResult("Stage_IIIB")
                    );
                   q9->(showResult("Stage_IIIA")
                       );
                    wrong()
                    );
     q5-> (q7->( showResult("Stage_IIB")
               );
               q6->
                  (
                   showResult("Stage_IIA")
		);
                wrong()
           );


     q1->(q4->( showResult("Stage_IC")
              );

              q3->(showResult("Stage_IB")
                 );

               q2->(showResult("Stage_IA")
                     );
                wrong()
       );

      wrong().


q1:-
    askQuestion("Is the cancer confined to the ovary or fallopian tube? ").

q2:-
    askQuestion("Is the cancer confined to one ovary only?").


q3:-
    askQuestion("Is the cancer found on both ovary?").

q4:-
    askQuestion("Is One or both ovary are found with cancer cells spilling out from the ovaries? ").

q5:-
    askQuestion("Does growth of the cancer involve one or both ovary and pelvic extension? ").

q6:-
    askQuestion("Does the cancer extends to fallopian tube or uterus? ").

q7:-
    askQuestion(" Does the cancer extend to other pelvic organs including fallopian tube and uterus? ").

q8:-
    askQuestion("Does the growth of the cancer involves one or both ovary and the cancer has spread beyond the pelvis? ").

q9:-
    askQuestion(" Are Microscopic cancer cells found in upper abdomen or lymph nodes? ").

q10:-
    askQuestion("Is visible tumor found in upper abdomen less than 2cm in size.? ").

q11:-
    askQuestion("Is visible tumor found in upper abdomen greater than 2cm in size, including disease on surface of liver and spleen? ").

q12:-
    askQuestion("Is the cancer growth is widely spread throughout the body? ").

q13:-
    askQuestion("Is Cancer found in the fluid around lungs ? ").

q14:-
    askQuestion("Is Cancer found inside the lungs, fluid or spleen.? ").




askQuestion(Q):-
    nl,
    write(Q), nl,
    read(Response),
    (Response == yes; Response == y)->true;false.


showResult(D):-
    nl, nl,
    write("The type of Ovarian Cancer is- "),
    write(D),
    nl.

wrong():-
    nl, nl,
    write("Sorry !! We can't find any result according to your answer. Please try to answer differently. Thanks "),
    nl,
    run.




















