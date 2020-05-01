1. WRITE NUM OF EMP WORKING IN EACH DEPT EXCEPT PRECIDENT
SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE JOB NOT IN 'PRESIDENT';
--------------------------------------------------------------------
2. TOTAL SAL NEEDED TO PAY ALL EMP IN EACH JOB
SQL> SELECT SUM(SAL),JOB
  2  FROM EMP
  3  GROUP BY JOB;
--------------------------------------------------------------------
3.WAQTD NO OF EMP WORKING AS MANAGER IN EACH DEPT
SQL> SELECT COUNT(*),DEPTNO
  2  FROM EMP
  3  WHERE JOB IN 'MANAGER'
  4  GROUP BY DEPTNO;
--------------------------------------------------------------------
4.WAQTD AVG SAL NEEDED TO PAY ALL EMP IN EACH DEPT EXCLUDING DEPT 20
SQL> SELECT AVG(SAL),DEPTNO
  2  FROM EMP
  3  WHERE DEPTNO NOT IN 20
  4  GROUP BY DEPTNO;
--------------------------------------------------------------------
5.WAQTD NUM OF EMP HAVING CHAR 'A' IN THEIR NAMES IN EACH JOB
SQL> SELECT COUNT(*)
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%';
--------------------------------------------------------------------
6.WAQTD NUM OF EMP AND THEIR AVG SAL NEEDED TO PAY THE EMP WHOSE
SAL IS > 2000 IN EACH DEPT
SQL> SELECT COUNT(*),SUM(SAL),DEPTNO
  2  FROM EMP
  3  WHERE SAL>2000
  4  GROUP BY DEPTNO;
--------------------------------------------------------------------
7.WAQTD TOTAL SAL AND NUM OF SALES MAN IN EACH DEPT
SQL> SELECT COUNT(*),SUM(SAL),DEPTNO
  2  FROM EMP
  3  WHERE JOB IN 'SALESMAN'
  4  GROUP BY DEPTNO;
--------------------------------------------------------------------
8.WAQTD NO OF EMP WITH THERE MAX SAL IN EACH DEPT
SQL> SELECT COUNT(*),MAX(SAL),DEPTNO
  2  FROM EMP
  3  GROUP BY DEPTNO;
--------------------------------------------------------------------
9.WAQTD MAX SAL GIVEN TO AN EMP WORKING IN EACH DEPT
SQL> SELECT MAX(SAL),DEPTNO
  2  FROM EMP
  3  GROUP BY DEPTNO;
--------------------------------------------------------------------
10.WAQTD NO OF TIMES SAL HAS BEEN REPEATED 
SQL> SELECT SAL,COUNT(SAL)
  2  FROM EMP
  3  GROUP BY SAL;
--------------------------------------------------------------------
11.WAQTD NO OF EMP HIRED ON SAME DATE AND SAME DEPT
SQL> SELECT COUNT(*),DEPTNO,HIREDATE
  2  FROM EMP
  3  GROUP BY DEPTNO,HIREDATE;
--------------------------------------------------------------------
12.WAQTD NUM OF EMP GETTING THE SAME SAL IN THE SAME DEPT
SQL> SELECT COUNT(*),SAL,DEPTNO
  2  FROM EMP
  3  GROUP BY DEPTNO,SAL;