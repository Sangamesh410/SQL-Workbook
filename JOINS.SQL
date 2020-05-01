							JOINS
'1)SELECT EMP DET FROM EM AND DEPT'
SQL> SELECT *
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO = DEPT.DEPTNO;

  OR

  SQL> SELECT ENAME,LOC
  2  FROM EMP,DEPT
  3  WHERE EMP.DEPTNO = DEPT.DEPTNO;
-----------------------------------------------------------------------------------------
'2)SELECT ENAME AND ANNUAL_SAL FROM EM AND LOC AND DANME FROM DET'
SQL> SELECT ENAME,SAL*12 ANNUAL_SAL,DNAME,LOC
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO IN DEPT.DEPTNO;

  OR

  SQL> SELECT ENAME,SAL*12 ANNUAL_SAL,DNAME,LOC
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO = DEPT.DEPTNO;

  OR

  SQL> SELECT ENAME,SAL*12 ANNUAL_SAL,LOC,DNAME
  2  FROM EMP,DEPT
  3  WHERE EMP.DEPTNO IN DEPT.DEPTNO;
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
CROSS JOIN

SQL> SELECT *
  2  FROM EMP CROSS JOIN DEPT;


SQL> SELECT *
  2  FROM EMP , DEPT;


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO     DEPTNO DNAME          LOC
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- -------------- --------
-----
      7839 KING       PRESIDENT            17-NOV-81       5000                    10         10 ACCOUNTING     NEW YORK
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30         10 ACCOUNTING     NEW YORK
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30         10 ACCOUNTING     NEW YORK
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30         10 ACCOUNTING     NEW YORK
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20         10 ACCOUNTING     NEW YORK
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30         10 ACCOUNTING     NEW YORK
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10         10 ACCOUNTING     NEW YORK
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10         10 ACCOUNTING     NEW YORK
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20         10 ACCOUNTING     NEW YORK
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20         10 ACCOUNTING     NEW YORK
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20         10 ACCOUNTING     NEW YORK
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20         10 ACCOUNTING     NEW YORK
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30         10 ACCOUNTING     NEW YORK
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30         10 ACCOUNTING     NEW YORK
      7839 KING       PRESIDENT            17-NOV-81       5000                    10         20 RESEARCH       DALLAS
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30         20 RESEARCH       DALLAS
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30         20 RESEARCH       DALLAS
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30         20 RESEARCH       DALLAS
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20         20 RESEARCH       DALLAS
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30         20 RESEARCH       DALLAS
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10         20 RESEARCH       DALLAS
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10         20 RESEARCH       DALLAS
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20         20 RESEARCH       DALLAS
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20         20 RESEARCH       DALLAS
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20         20 RESEARCH       DALLAS
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20         20 RESEARCH       DALLAS
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30         20 RESEARCH       DALLAS
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30         20 RESEARCH       DALLAS
      7839 KING       PRESIDENT            17-NOV-81       5000                    10         30 SALES          CHICAGO
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30         30 SALES          CHICAGO
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30         30 SALES          CHICAGO
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30         30 SALES          CHICAGO
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20         30 SALES          CHICAGO
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30         30 SALES          CHICAGO
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10         30 SALES          CHICAGO
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10         30 SALES          CHICAGO
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20         30 SALES          CHICAGO
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20         30 SALES          CHICAGO
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20         30 SALES          CHICAGO
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20         30 SALES          CHICAGO
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30         30 SALES          CHICAGO
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30         30 SALES          CHICAGO
      7839 KING       PRESIDENT            17-NOV-81       5000                    10         40 OPERATIONS     BOSTON
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30         40 OPERATIONS     BOSTON
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30         40 OPERATIONS     BOSTON
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30         40 OPERATIONS     BOSTON
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20         40 OPERATIONS     BOSTON
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30         40 OPERATIONS     BOSTON
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10         40 OPERATIONS     BOSTON
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10         40 OPERATIONS     BOSTON
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20         40 OPERATIONS     BOSTON
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20         40 OPERATIONS     BOSTON
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20         40 OPERATIONS     BOSTON
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20         40 OPERATIONS     BOSTON
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30         40 OPERATIONS     BOSTON
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30         40 OPERATIONS     BOSTON

56 rows selected.

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
INNER JOIN

SQL> SELECT *
  2  FROM EMP,DEPT
  3  WHERE EMP.DEPTNO IN DEPT.DEPTNO;

OR

SQL> SELECT *
  2  FROM EMP INNER JOIN DEPT
  3  'ON' EMP.DEPTNO IN DEPT.DEPTNO;

OR

SQL> SELECT
  2  *
  3  FROM EMP,DEPT
  4  WHERE EMP.DEPTNO = DEPT.DEPTNO;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO     DEPTNO DNAME          LOC
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ---------- -------------- --------
-----
      7839 KING       PRESIDENT            17-NOV-81       5000                    10         10 ACCOUNTING     NEW YORK
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30         30 SALES          CHICAGO
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30         30 SALES          CHICAGO
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30         30 SALES          CHICAGO
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20         20 RESEARCH       DALLAS
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30         30 SALES          CHICAGO
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10         10 ACCOUNTING     NEW YORK
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10         10 ACCOUNTING     NEW YORK
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20         20 RESEARCH       DALLAS
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20         20 RESEARCH       DALLAS
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20         20 RESEARCH       DALLAS
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20         20 RESEARCH       DALLAS
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30         30 SALES          CHICAGO
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30         30 SALES          CHICAGO

14 rows selected.


-------------------------------------------------------------------------------------------------
'1)SELECT ENAME , DNAME WHERE EMP DEPTNO IN 20,30'
SQL> SELECT ENAME,DNAME
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO IN DEPT.DEPTNO
  4  WHERE EMP.DEPTNO IN (20,30);

OR

SQL> SELECT ENAME,DNAME
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO IN DEPT.DEPTNO
  4  WHERE DEPT.DEPTNO IN (20,30);

ENAME      DNAME
---------- --------------
BLAKE      SALES
MARTIN     SALES
TURNER     SALES
ADAMS      RESEARCH
JAMES      SALES
JONES      RESEARCH
SCOTT      RESEARCH
FORD       RESEARCH
SMITH      RESEARCH
ALLEN      SALES
WARD       SALES

11 rows selected.

-------------------------------------------------------------------------------------------------
'2)SELECT ENAME , DNAME WHERE EMP DEPTNO IN 20,30'

SQL> SELECT DNAME,SAL
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO IN DEPT.DEPTNO
  4  WHERE SAL > 1880;

DNAME                 SAL
-------------- ----------
ACCOUNTING           5000
SALES                2850
ACCOUNTING           2450
RESEARCH             2975
RESEARCH             3000
RESEARCH             3000

6 rows selected.

-------------------------------------------------------------------------------------------------
'3)SELECT ENAME , LOC WHERE EMP DNAME IN CHICAGO'
SQL> SELECT ENAME,LOC,SAL*12 ANNUAL_SAL
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO IN DEPT.DEPTNO
  4  WHERE LOC IN 'CHICAGO';

ENAME      LOC           ANNUAL_SAL
---------- ------------- ----------
BLAKE      CHICAGO            34200
MARTIN     CHICAGO            15000
TURNER     CHICAGO            18000
JAMES      CHICAGO            11400
ALLEN      CHICAGO            19200
WARD       CHICAGO            15000

-------------------------------------------------------------------------------------------------
'4)SELECT DNAME , ENAME HIREDATE WHERE HIREDATE IS > 1980'

SQL>  SELECT DNAME,ENAME,HIREDATE
  2   FROM EMP INNER JOIN DEPT
  3   ON EMP.DEPTNO IN DEPT.DEPTNO
  4   WHERE HIREDATE > '31-DEC-1980';

DNAME          ENAME      HIREDATE
-------------- ---------- ---------
ACCOUNTING     KING       17-NOV-81
SALES          BLAKE      01-MAY-81
SALES          MARTIN     28-SEP-81
SALES          TURNER     08-SEP-81
RESEARCH       ADAMS      23-MAY-87
SALES          JAMES      03-DEC-81
ACCOUNTING     MILLER     23-JAN-82
ACCOUNTING     CLARK      09-JUN-81
RESEARCH       JONES      02-APR-81
RESEARCH       SCOTT      19-APR-87
RESEARCH       FORD       03-DEC-81
SALES          ALLEN      20-FEB-81
SALES          WARD       22-FEB-81

13 rows selected.

'& DNAME IN RESEARCH'

SQL>  SELECT DNAME,ENAME,HIREDATE
  2   FROM EMP INNER JOIN DEPT
  3   ON EMP.DEPTNO IN DEPT.DEPTNO
  4   WHERE HIREDATE > '31-DEC-1980' AND DNAME IN 'RESEARCH';

DNAME          ENAME      HIREDATE
-------------- ---------- ---------
RESEARCH       ADAMS      23-MAY-87
RESEARCH       JONES      02-APR-81
RESEARCH       SCOTT      19-APR-87
RESEARCH       FORD       03-DEC-81


-------------------------------------------------------------------------------------------------
'5)'

SQL> SELECT ENAME,JOB,LOC
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO IN DEPT.DEPTNO
  4  WHERE ENAME LIKE '%S%' AND LOC LIKE '%S%';

ENAME      JOB       LOC
---------- --------- -------------
ADAMS      CLERK     DALLAS
JONES      MANAGER   DALLAS
SCOTT      ANALYST   DALLAS
SMITH      CLERK     DALLAS

-------------------------------------------------------------------------------------------------
'6)'
SQL> SELECT ENAME,SAL,LOC
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO IN DEPT.DEPTNO
  4  WHERE SAL LIKE '___' AND LOC IN 'NEW YORK';

no rows selected

-------------------------------------------------------------------------------------------------
'7)'

SQL> SELECT ENAME,LOC
  2  FROM EMP INNER JOIN DEPT
  3  ON EMP.DEPTNO IN DEPT.DEPTNO
  4  WHERE LOC IN 'BOSTON';

no rows selected

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
                                      'SELF JOIN'

SQL> SELECT E1.ENAME EMPLOYEE,E2.ENAME MANAGER
  2   FROM EMP E1 JOIN EMP E2
  3  ON E1.MGR = E2.EMPNO;

EMPLOYEE   MANAGER
---------- ----------
JONES      KING
CLARK      KING
BLAKE      KING
WARD       BLAKE
ALLEN      BLAKE
JAMES      BLAKE
TURNER     BLAKE
MARTIN     BLAKE
MILLER     CLARK
FORD       JONES
SCOTT      JONES
ADAMS      SCOTT
SMITH      FORD

13 rows selected.

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

SQL> SELECT E1.ENAME EMLOYEE,E2.ENAME MANAGER,E3.ENAME M_MANAGER
  2  FROM EMP E1 JOIN EMP E2
  3  ON E1.MGR = E2.EMPNO JOIN EMP E3
  4  ON E2.MGR = E3.EMPNO;

EMLOYEE    MANAGER    M_MANAGER
---------- ---------- ----------
SCOTT      JONES      KING
FORD       JONES      KING
MILLER     CLARK      KING
MARTIN     BLAKE      KING
TURNER     BLAKE      KING
JAMES      BLAKE      KING
ALLEN      BLAKE      KING
WARD       BLAKE      KING
SMITH      FORD       JONES
ADAMS      SCOTT      JONES

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

SQL> SELECT E1.ENAME EMPLOYEE,E2.ENAME MANAGER
  2  FROM EMP E1 JOIN EMP E2
  3  ON E1.MGR IN E2.EMPNO
  4  WHERE E1.JOB IN 'CLERK';

EMPLOYEE   MANAGER
---------- ----------
ADAMS      SCOTT
JAMES      BLAKE
MILLER     CLARK
SMITH      FORD

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

SQL> SELECT E1.ENAME EMPNAME,E2.ENAME MGR
  2  FROM EMP E1 JOIN EMP E2
  3  ON E1.MGR IN E2.EMPNO
  4  WHERE E2.DEPTNO IN (20,30);

EMPNAME    MGR
---------- ----------
MARTIN     BLAKE
TURNER     BLAKE
ADAMS      SCOTT
JAMES      BLAKE
SCOTT      JONES
FORD       JONES
SMITH      FORD
ALLEN      BLAKE
WARD       BLAKE

9 rows selected.

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
SQL> SELECT E1.ENAME EMPLOYEE , E2.ENAME MANAGER
  2  FROM EMP E1 JOIN EMP E2
  3  ON E1.MGR = E2.EMPNO
  4  WHERE E1.SAL > 2300 AND E2.SAL > 2300;

EMPLOYEE   MANAGER
---------- ----------
JONES      KING
CLARK      KING
BLAKE      KING
FORD       JONES
SCOTT      JONES

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
                'NATURAL JOIN'
                                                                                  
SELECT ENAME ,DEPTNO,DNAME
FROM EMP NATURAL JOIN DEPT;