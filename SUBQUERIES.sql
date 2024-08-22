-- SUBQUERIES
-- 다른 쿼리 내에서 실행되는 쿼리이다.


SELECT
	menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
    FROM tbl_menu
    WHERE
    category_code = (
		SELECT
			category_code
            FROM tbl_menu
            WHERE menu_name = "민트미역국"
            );
            
-- 서브쿼리를 활용한 메인 쿼리
SELECT
	MAX(count)
    FROM 
    (SELECT 
		COUNT(*) AS 'count'
    FROM tbl_menu
    GROUP BY category_code) AS countmenu; -- 서브쿼리에는 반드시 별칭을 붙여야한다.
    
    
    SELECT
		menu_code,
        menu_name,
        menu_price,
        category_code,
        orderable_status
        FROM tbl_menu a
        WHERE
			menu_price > (
				SELECT
					AVG(menu_price)
                    FROM tbl_menu
                    WHERE category_code = a.category_code);