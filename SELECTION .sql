										SELECTION

SYNTAX:-
3	SELECT */[DISTINCT] COLUMN NAME/EXPRESSION [ALIAS]
1	FROM TABLE_NAME
2	WHERE <FILTER_CONDITION>;


SQL> SELECT ENAME,DEPTNO
  2  FROM EMP
  3  WHERE DEPTNO=10;

ENAME          DEPTNO
---------- ----------
KING               10
MILLER             10
CLARK              10

SQL> SELECT  ENAME,SAL
  2  FROM EMP
  3  WHERE SAL>800;

ENAME             SAL
---------- ----------
KING             5000
BLAKE            2850
MARTIN           1250
TURNER           1500
ADAMS            1100
JAMES             950
MILLER           1300
CLARK            2450
JONES            2975
SCOTT            3000
FORD             3000
ALLEN            1600
WARD             1250

13 rows selected.


SQL> SELECT *
  2  FROM EMP
  3  WHERE EMPNO=7521;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
	  
	  
SQL> SELECT SAL,SAL*12 ANNUAL_SAL
  2  FROM EMP
  3  WHERE DEPTNO=10;

       SAL ANNUAL_SAL
---------- ----------
      5000      60000
      1300      15600
      2450      29400
	  
	  