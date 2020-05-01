'SELECT Nth MAX SAL'
SQL>  SELECT *
  2   FROM EMP E1
  3   WHERE (SELECT COUNT( DISTINCT E2.SAL) FROM EMP E2
  4   WHERE E1.SAL < E2.SAL)=4;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10

-----------------------------------------------------------------------------------------
'SELECT Nth MINIMUM SAL'
SQL>   SELECT *
  2    FROM EMP E1
  3    WHERE (SELECT COUNT( DISTINCT E2.SAL) FROM EMP E2
  4    WHERE E1.SAL > E2.SAL)=4;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10



-----------------------------------------------------------------------------------------
'SELECT ENAME AND DEPTNAME FROM TABLE'
SQL> SELECT ENAME,DNAME
  2  FROM EMP E1 INNER JOIN DEPT D
  3  ON E1.DEPTNO = D.DEPTNO
  4  WHERE (SELECT COUNT( DISTINCT E2.SAL) FROM EMP E2
  5  WHERE E1.SAL > E2.SAL)=4;

ENAME      DNAME
---------- --------------
MILLER     ACCOUNTING


-----------------------------------------------------------------------------------------

SQL> SELECT ENAME,DNAME
  2  FROM EMP E1 INNER JOIN DEPT D
  3  ON E1.DEPTNO = D.DEPTNO
  4  WHERE (SELECT COUNT( DISTINCT E2.SAL) FROM EMP E2
  5  WHERE E1.SAL > E2.SAL)=3;

ENAME      DNAME
---------- --------------
MARTIN     SALES
WARD       SALES


'
IF 4TH MIN THEN USE 3 TO COMPARING'