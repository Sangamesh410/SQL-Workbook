												OPERATOR

1> ARITHMETIC OPERATOR------------( + , - , * , / )
2> LOGICAL OPERATOR---------------( AND , OR , NOT )
3> CAONCATINATION OPERATOR--------( || )
4> RELATIONAL OPERATOR------------( > , < , =< , >= , = , != or <> ) 
5> SPECIAL OPERATOR---------------( IN , NOT IN 
									BETWEEN , NOT BETWEEN
									IS , IS NOT
									LIKE , NOT LIKE )
6> SUB QUERY OPERATOR-------------( ALL , ANY , EXISTS , NOT EXISTS )


                                                   CONCATINATION OPERATOR


SQL> SELECT 'hI '||ENAME||' HOW ARE YOU'
  2  FROM EMP;

'HI'||ENAME||'HOWAREYOU'
-------------------------
hI KING HOW ARE YOU
hI BLAKE HOW ARE YOU
hI MARTIN HOW ARE YOU
hI TURNER HOW ARE YOU
hI ADAMS HOW ARE YOU
hI JAMES HOW ARE YOU
hI MILLER HOW ARE YOU
hI CLARK HOW ARE YOU
hI JONES HOW ARE YOU
hI SCOTT HOW ARE YOU
hI FORD HOW ARE YOU
hI SMITH HOW ARE YOU
hI ALLEN HOW ARE YOU
hI WARD HOW ARE YOU

14 rows selected.

SQL> SELECT 'hI '||ENAME||' HOW ARE YOU' HEY
  2  FROM EMP;

HEY
-------------------------
hI KING HOW ARE YOU
hI BLAKE HOW ARE YOU
hI MARTIN HOW ARE YOU
hI TURNER HOW ARE YOU
hI ADAMS HOW ARE YOU
hI JAMES HOW ARE YOU
hI MILLER HOW ARE YOU
hI CLARK HOW ARE YOU
hI JONES HOW ARE YOU
hI SCOTT HOW ARE YOU
hI FORD HOW ARE YOU
hI SMITH HOW ARE YOU
hI ALLEN HOW ARE YOU
hI WARD HOW ARE YOU

14 rows selected.


                                                   LOGICAL OPERATOR
												   
SQL> SELECT ENAME,SAL
  2  FROM EMP
  3  WHERE SAL>1300 AND JOB='SALESMAN';

ENAME             SAL
---------- ----------
TURNER           1500
ALLEN            1600

SQL> SELECT ENAME,DEPTNO
  2  FROM EMP
  3  WHERE DEPTNO =20 OR DEPTNO=30;

ENAME          DEPTNO
---------- ----------
BLAKE              30
MARTIN             30
TURNER             30
ADAMS              20
JAMES              30
JONES              20
SCOTT              20
FORD               20
SMITH              20
ALLEN              30
WARD               30

SQL> SELECT ENAME,HIREDATE
  2  FROM EMP
  3  WHERE HIREDATE>='1-JAN-1981' AND HIREDATE<='31-DEC-1982';

ENAME      HIREDATE
---------- ---------
KING       17-NOV-81
BLAKE      01-MAY-81
MARTIN     28-SEP-81
TURNER     08-SEP-81
JAMES      03-DEC-81
MILLER     23-JAN-82
CLARK      09-JUN-81
JONES      02-APR-81
FORD       03-DEC-81
ALLEN      20-FEB-81
WARD       22-FEB-81

11 rows selected.

SQL> SELECT ENAME,DEPTNO,JOB
  2  FROM EMP
  3  WHERE  JOB='MANAGER' AND DEPTNO=10;

ENAME          DEPTNO JOB
---------- ---------- ---------
CLARK              10 MANAGER

SQL> SELECT JOB,ENAME
  2  FROM EMP
  3  WHERE JOB='MANAGER' OR JOB='CLEARK';

JOB       ENAME
--------- ----------
MANAGER   BLAKE
MANAGER   CLARK
MANAGER   JONES

SQL> SELECT ENAME,SAL
  2  FROM EMP
  3  WHERE SAL>=1200 AND SAL<=3000;

ENAME             SAL
---------- ----------
BLAKE            2850
MARTIN           1250
TURNER           1500
MILLER           1300
CLARK            2450
JONES            2975
SCOTT            3000
FORD             3000
ALLEN            1600
WARD             1250

10 rows selected.

SQL> SELECT ENAME,SAL,DEPTNO
  2  FROM EMP
  3  WHERE DEPTNO IN (10,20,30);

ENAME             SAL     DEPTNO
---------- ---------- ----------
KING             5000         10
BLAKE            2850         30
MARTIN           1250         30
TURNER           1500         30
ADAMS            1100         20
JAMES             950         30
MILLER           1300         10
CLARK            2450         10
JONES            2975         20
SCOTT            3000         20
FORD             3000         20
SMITH             800         20
ALLEN            1600         30
WARD             1250         30

14 rows selected.

SQL> SELECT ENAME,SAL,DEPTNO
  2  FROM EMP
  3  WHERE DEPTNO NOT IN (10,20,30);

no rows selected

SQL> SELECT ENAME,SAL,DEPTNO
  2  FROM EMP
  3  WHERE DEPTNO NOT IN (10,30);

ENAME             SAL     DEPTNO
---------- ---------- ----------
ADAMS            1100         20
JONES            2975         20
SCOTT            3000         20
FORD             3000         20
SMITH             800         20

SQL> SELECT SAL
  2  FROM EMP
  3  WHERE SAL BETWEEN 1200 AND 3000;

       SAL
----------
      2850
      1250
      1500
      1300
      2450
      2975
      3000
      3000
      1600
      1250

10 rows selected.

SQL> SELECT SAL
  2  FROM EMP
  3  WHERE SAL NOT BETWEEN 1200 AND 3000;

       SAL
----------
      5000
      1100
       950
       800


SQL> SELECT COMM
  2  FROM EMP
  3  WHERE COMM IS NULL;

      COMM
----------











10 rows selected.

SQL> SELECT COMM
  2  FROM EMP
  3  WHERE COMM IS NOT NULL;

      COMM
----------
      1400
         0
       300
       500

SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE ENAME NOT LIKE '%S%';

ENAME
----------
KING
BLAKE
MARTIN
TURNER
MILLER
CLARK
FORD
ALLEN
WARD

9 rows selected.

SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE ENAME LIKE 'S%';

ENAME
----------
SCOTT
SMITH

SQL> SELECT ENAME FROM EMP WHERE ENAME LIKE '%I__';

ENAME
----------
KING
SMITH

	   
												   
                                                   SPECIAL OPERATOR
												   