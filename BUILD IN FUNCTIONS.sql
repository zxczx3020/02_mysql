-- BUILD IN FUNCTIONS

-- ASCII
SELECT ASCII('A');

-- CONCAT
SELECT CONCAT("호랑이","기린","토끼");

SELECT CONCAT_WS(",","호랑이","기린","토끼");

-- ELT : 해당 위치의 문자열 반환
SELECT ELT(2, "사과","딸기","바나나");

-- FIELD : 찾을 문자열 위치 반환
SELECT FIELD("딸기", "사과","딸기","바나나");

-- FORMAT(숫자,소수점 자릿수)
SELECT FORMAT (1231234124.56674,3);

-- 2진수 8진수 16진수 표현
SELECT BIN(65), OCT(65), HEX(65);

-- INSERT(기존 문자열, 위치, 길이, 삽입할 문자열)
SELECT INSERT("내 이름은 홍길동입니다.",7,3,"유관순");

-- LEFT, RIGHT
SELECT LEFT ("HELLO WORLD!",3), RIGHT ("HELLO WORLD!",3);

-- LOWER, UPPER

-- TRIM(공백제거)


-- REPEAT (문자열, 횟수)
SELECT REPEAT("mysql",3);

-- REPLACE(문자열, 찾을 문자열, 바꿀 문자열)
SELECT REPLACE("마이SQL","마이","MY");

-- REVERSE(문자열)
SELECT REVERSE("STRESSED");

-- SUBSTRING("문자열,시작위치,길이)
SELECT SUBSTRING("안녕하세요 반갑습니다.", 7,2);