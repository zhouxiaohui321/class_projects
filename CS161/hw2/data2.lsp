(SETQ WK-MEM (LIST(UNIQUE-GAP 'CON)))
(SETQ WK-MEM (CONS  (UNIQUE-GAP 'CON) WK-MEM))
(SETQ WK-MEM (CONS  (UNIQUE-GAP 'CON) WK-MEM))



(SET (SECOND WK-MEM) '(HUMAN  (L-NAME (SHABI)) (F-NAME (HANK))))
(SET (FIRST WK-MEM) '(HUMAN (GENDER (MALE))
                             (REL (SON (OF OF0909)))
                             (F-NAME F-NAME0909)))
(SET (third WK-MEM) '())


(SET (FOURTH WK-MEM) '(MTRANS
(AGENT AGENT)
(RECIP RECIP111)
(OBJECT (C-CAUSE
(ANTE ANTE)
(CONSEQ (GOAL-FAILURE
(AGENT AGENT222))
(TIME (FUTURE))))
(JUSTIF JUSTIF)))))



(SETQ CON3311 '(C-CAUSE	(ANTE ANTE8787)	(CONSEQ (GOAL-FAILURE (AGENT AGENT8787) (TIME (FUTURE))))(JUSTIF JUSTIF8787)))
(SETQ ANTE8787 NIL)
(SETQ AGENT8787 NIL)
(SETQ JUSTIF8787 '(STEAL (AGENT  (HUMAN (GENDER (MALE)) (F-NAME (HANK))))))






=====================================
(setq pgs1 '(SALLY GRENTZ WARNED HER TEENAGE SON FREDDY ABOUT BECOMING FRIENDS WITH HANK BECAUSE HE HAD STOLEN A CAR))

(setq clx-1 '(((FREDDY)(HUMAN (GENDER (MALE))(F-NAME (FREDDY))(L-NAME L-NAME))((D-LAST-NAME L-NAME)))((SALLY)(HUMAN (GENDER (FEMALE))(F-NAME (SALLY))(L-NAME L-NAME))((D-LAST-NAME L-NAME)))((HANK)(HUMAN (GENDER (MALE))(F-NAME (HANK))(L-NAME L-NAME))((D-LAST-NAME L-NAME))) ((HAROLD) (HUMAN (GENDER (MALE))(F-NAME (HAROLD))(L-NAME L-NAME))((D-LAST-NAME L-NAME)))   ((WARNED) (MTRANS(AGENT AGENT)(RECIP RECIP)(OBJECT (C-CAUSE(ANTE ANTE)(CONSEQ (GOAL-FAILURE(AGENT AGENT)(TIME(FUTURE))))(JUSTIF JUSTIF))))((D-FILL (AGENT) BEF HUMAN)(D-FILL (RECIP) AFT HUMAN)(D-AFT-PRED (OBJECT ANTE) INVOLVE (ACT ST-CHANGE))(D-AFT-PRED (JUSTIF) REASON-FOR (ACT))(D-SAME-BINDING (RECIP) (OBJECT CONSEQ AGENT)))) ((HER)(PRONOUN (TYPE (POSS))(REF REF))((D-POSS-PRO-REF REF BEF (GENDER) FEMALE))) ((TEENAGE) (AGE (VAL (TEEN)))((D-ATTACH-SF AFT HUMAN AGE (TEEN)))) ((SON)(HUMAN(GENDER (MALE))(REL (SON (OF OF)))(F-NAME F-NAME))((D-POSS-PRO BEF (REL OF))(D-IMM-AFT F-NAME))) ((ABOUT) (INVOLVE)()) ((BECOMING FRIENDS)(ST-CHANGE(AGENT AGENT)(FROM (ACQUAINT))(TO (FRIEND(OF OF))))((D-FILL (AGENT) BEF HUMAN)(D-AFT-PRED (TO OF) WITH (HUMAN)))) ((WITH)(WITH)()) ((BECAUSE) (REASON-FOR)())((HE)(HUMAN (GENDER (MALE))(F-NAME F-NAME))((D-PRO-REF BEF GENDER MALE F-NAME)))  ((HAD STOLEN) (STEAL(AGENT AGENT)(OBJECT OBJECT)(TIME (PAST)))((D-FILL (AGENT) BEF HUMAN)(D-FILL (OBJECT) AFT PHYS-OBJ)))  ((A)()((D-ATTACH-SF AFT PHYS-OBJ REF (INDEF))))((CAR) (VEHICLE)())))
