										PROJECTION
SYNTAX:-
3	SELECT */[DISTINCT] COLUMN NAME/EXPRESSION [ALIAS]
1	FROM TABLE_NAME;

SQL> DESC STUDENT;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 SID                                       NOT NULL NUMBER
 SNAME                                     NOT NULL VARCHAR2(10)
 BRANCH                                    NOT NULL VARCHAR2(10)
 PER                                       NOT NULL NUMBER
 
 SQL> SELECT *
  2  FROM STUDENT;

       SID SNAME      BRANCH            PER
---------- ---------- ---------- ----------
         1 A          EC                 60
         2 B          CS                 75
         3 C          CS                 60
         4 D          EC                 80
         5 E          ME                 50
         6 F          EEE                75


6 rows selected.


SQL> DESC EMP
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPNO                                     NOT NULL NUMBER(4)
 ENAME                                              VARCHAR2(10)
 JOB                                                VARCHAR2(9)
 MGR                                                NUMBER(4)
 HIREDATE                                           DATE
 SAL                                                NUMBER(7,2)
 COMM                                               NUMBER(7,2)
 DEPTNO                                             NUMBER(2)
 
 
SQL> SELECT *
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30

14 rows selected.

SQL> SELECT SNAME
  2  FROM STUDENT;

SNAME
-----
A
C
D
E
F
B

6 rows selected.


SQL> SELECT BRANCH,PER
  2  FROM STUDENT;

BRANCH            PER
---------- ----------
EC                 60
CS                 60
EC                 80
ME                 50
EEE                75
CS                 75

6 rows selected.
