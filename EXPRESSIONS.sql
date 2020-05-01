										EXPRESSIONS
										
SYNTAX:-
3	SELECT */[DISTINCT] COLUMN NAME/EXPRESSION [ALIAS]
1	FROM TABLE_NAME;

										
SQL> SELECT SAL*12
  2  FROM EMP;

    SAL*12
----------
     60000
     34200
     15000
     18000
     13200
     11400
     15600
     29400
     35700
     36000
     36000
      9600
     19200
     15000

14 rows selected.

SQL> SELECT SAL*12 AS ANNUAL_SALARY
  2  FROM EMP;

ANNUAL_SALARY
-------------
        60000
        34200
        15000
        18000
        13200
        11400
        15600
        29400
        35700
        36000
        36000
         9600
        19200
        15000

14 rows selected.

SQL> SELECT SAL*12 aNNUAL_SALARY
  2  FROM EMP;

ANNUAL_SALARY
-------------
        60000
        34200
        15000
        18000
        13200
        11400
        15600
        29400
        35700
        36000
        36000
         9600
        19200
        15000

14 rows selected.

SQL> SELECT SAL*12 "ANNUAL SALARY"
  2  FROM EMP;

ANNUAL SALARY
-------------
        60000
        34200
        15000
        18000
        13200
        11400
        15600
        29400
        35700
        36000
        36000
         9600
        19200
        15000

14 rows selected.

SQL> SELECT SAL*12 HALF_SALARY
  2  FROM EMP;

HALF_SALARY
-----------
      60000
      34200
      15000
      18000
      13200
      11400
      15600
      29400
      35700
      36000
      36000
       9600
      19200
      15000

14 rows selected.

SQL> SELECT ENAME,SAL
  2  FROM EMP;

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
SMITH             800
ALLEN            1600
WARD             1250

14 rows selected.

SQL> SELECT ENAME EMPLOYEE,SAL*1.1 HIKE_10
  2  FROM EMP;

EMPLOYEE      HIKE_10
---------- ----------
KING             5500
BLAKE            3135
MARTIN           1375
TURNER           1650
ADAMS            1210
JAMES            1045
MILLER           1430
CLARK            2695
JONES          3272.5
SCOTT            3300
FORD             3300
SMITH             880
ALLEN            1760
WARD             1375

14 rows selected.

SQL> SELECT ENAME,SAL*0.85
  2  FROM EMP;

ENAME        SAL*0.85
---------- ----------
KING             4250
BLAKE          2422.5
MARTIN         1062.5
TURNER           1275
ADAMS             935
JAMES           807.5
MILLER           1105
CLARK          2082.5
JONES         2528.75
SCOTT            2550
FORD             2550
SMITH             680
ALLEN            1360
WARD           1062.5

14 rows selected.

SQL> SELECT ENAME,SAL*1.35 HIKE_35,SAL
  2  FROM EMP;

ENAME         HIKE_35        SAL
---------- ---------- ----------
KING             6750       5000
BLAKE          3847.5       2850
MARTIN         1687.5       1250
TURNER           2025       1500
ADAMS            1485       1100
JAMES          1282.5        950
MILLER           1755       1300
CLARK          3307.5       2450
JONES         4016.25       2975
SCOTT            4050       3000
FORD             4050       3000
SMITH            1080        800
ALLEN            2160       1600
WARD           1687.5       1250

14 rows selected.

SQL> SELECT ENAME,SAL+SAL*35/100,SAL
  2  FROM EMP;

ENAME      SAL+SAL*35/100        SAL
---------- -------------- ----------
KING                 6750       5000
BLAKE              3847.5       2850
MARTIN             1687.5       1250
TURNER               2025       1500
ADAMS                1485       1100
JAMES              1282.5        950
MILLER               1755       1300
CLARK              3307.5       2450
JONES             4016.25       2975
SCOTT                4050       3000
FORD                 4050       3000
SMITH                1080        800
ALLEN                2160       1600
WARD               1687.5       1250

14 rows selected.

ENAME       SAL_BONUS
---------- ----------
KING             5500
BLAKE            3350
MARTIN           1750
TURNER           2000
ADAMS            1600
JAMES            1450
MILLER           1800
CLARK            2950
JONES            3475
SCOTT            3500
FORD             3500
SMITH            1300
ALLEN            2100
WARD             1750

14 rows selected.

SQL> SELECT EMP.* ,SAL*12 ANNUAL_SAL
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO ANNUAL_SAL
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10      60000
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30      34200
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30      15000
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30      18000
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20      13200
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30      11400
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10      15600
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10      29400
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20      35700
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20      36000
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20      36000
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       9600
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30      19200
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30      15000

14 rows selected.