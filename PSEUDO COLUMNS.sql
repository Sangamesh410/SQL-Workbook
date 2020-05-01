									PSEUDO COLUMNS

SQL> SELECT DEPT.*,ROWNUM,ROWID
  2  FROM DEPT
  3  ;

    DEPTNO DNAME          LOC               ROWNUM ROWID
---------- -------------- ------------- ---------- ------------------
        10 ACCOUNTING     NEW YORK               1 AAADVVAAEAAAADUAAA
        20 RESEARCH       DALLAS                 2 AAADVVAAEAAAADUAAB
        30 SALES          CHICAGO                3 AAADVVAAEAAAADUAAC
        40 OPERATIONS     BOSTON                 4 AAADVVAAEAAAADUAAD

----------------------------------------------------------------------------------
'2)SELECT RECORDS UTO 5TH ROW'
SQL> SELECT *
  2  FROM EMP
  3  WHERE ROWNUM <=5;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20

----------------------------------------------------------------------------------
'3)SELECT 5 MAX SAL RECORDS'
SQL> SELECT ROWNUM SLNO,T1.*
  2  FROM (SELECT SAL FROM EMP ORDER BY SAL DESC)T1
  3  WHERE ROWNUM <=5;

      SLNO        SAL
---------- ----------
         1       5000
         2       3000
         3       3000
         4       2975
         5       2850
----------------------------------------------------------------------------------
'4)SELECT 5 MIN SAL RECORDS'
SQL> SELECT ROWNUM SINO,TEMP.*
  2  FROM (SELECT SAL FROM EMP ORDER BY SAL ASC)TEMP
  3  WHERE ROWNUM<=5;

      SINO        SAL
---------- ----------
         1        800
         2        950
         3       1100
         4       1250
         5       1250

----------------------------------------------------------------------------------
'5)SELECT 5TH MAX SAL RECORDS'
SQL>  SELECT SAL,ROWNUM
  2   FROM (SELECT ROWNUM SINO,T.*
  3   	    FROM (SELECT SAL
  4      			FROM EMP 
  5   				ORDER BY SAL DESC) T)
  6					WHERE SINO=5;

       SAL     ROWNUM
---------- ----------
      2850          1

----------------------------------------------------------------------------------
'6)SELECT 5TH MIN SAL RECORDS'
SQL> SELECT SAL
  2  FROM (SELECT ROWNUM SINO,T.* FROM (SELECT SAL FROM EMP ORDER BY SAL ASC)T)
  3  WHERE SINO=5;

       SAL
----------
      1250

 SQL> SELECT *
  2  FROM (SELECT ROWNUM SINO,T1.* FROM (SELECT * FROM EMP ORDER BY SAL DESC)T1)
  3  WHERE SINO IN 5;


----------------------------------------------------------------------------------
'7)SELECT 5TH MIN SAL RECORDS'
  SQL>  SELECT ENAME,SAL
  2   FROM (SELECT ROWNUM SINO,T.* FROM (
  3                                      SELECT ENAME,SAL FROM EMP ORDER BY SAL ASC)T)
  4  WHERE SINO IN 5;

ENAME             SAL
---------- ----------
MARTIN           1250


----------------------------------------------------------------------------------
'8)SELECT 3RD AND 6TH MIN SAL RECORDS'

SQL> SELECT ENAME,SAL
  2  FROM (SELECT ROWNUM SINO,T.* FROM (
  3                                     SELECT ENAME,SAL FROM EMP ORDER BY SAL ASC)T)
  4  WHERE SINO IN (3,6);

ENAME             SAL
---------- ----------
ADAMS            1100
MILLER           1300
