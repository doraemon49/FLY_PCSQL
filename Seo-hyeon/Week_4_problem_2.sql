-- 성분으로 구분한 아이스크림 총 주문량
SELECT INGREDIENT_TYPE, SUM(TOTAL_ORDER) as TOTAL_ORDER 
from FIRST_HALF join ICECREAM_INFO using (FLAVOR)
group by INGREDIENT_TYPE
order by TOTAL_ORDER asc