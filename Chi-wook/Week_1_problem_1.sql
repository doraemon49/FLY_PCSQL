--https://school.programmers.co.kr/learn/courses/30/lessons/131537
SELECT 
    DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE
    , PRODUCT_ID
    , USER_ID
    , SALES_AMOUNT
FROM ONLINE_SALE
/*WHERE SALES_DATE LIKE ('2022-03%') -- ONLINE_SALE 테이블에 적용 */
WHERE SALES_DATE between '2022-03-01' and '2022-03-31'
UNION 
SELECT 
    DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE
    , PRODUCT_ID
    , NULL
    , SALES_AMOUNT
FROM OFFLINE_SALE
/*WHERE SALES_DATE LIKE ('2022-03%') -- 전체 테이블이 아닌, OFFLINE_SALE 테이블에 적용 */
WHERE SALES_DATE between '2022-03-01' and '2022-03-31'
ORDER BY 1, 2, 3 -- 병합된 전체 결과에 적용됨
