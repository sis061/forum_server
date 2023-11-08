CREATE DATABASE bbs;
CREATE DATABASE bbs2 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci; use bbs2;
DROP TABLE IF EXISTS `BOARD`;
CREATE TABLE board (
BOARD_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, BOARD_TITLE VARCHAR(30),
BOARD_CONTENT VARCHAR(500),
REGISTER_ID VARCHAR(20),
REGISTER_DATE DATETIME DEFAULT CURRENT_TIMESTAMP, UPDATER_ID VARCHAR(20),
UPDATER_DATE DATETIME DEFAULT CURRENT_TIMESTAMP
);
SHOW COLUMNS FROM board;
DESC board;
insert into BOARD(BOARD_TITLE, BOARD_CONTENT, REGISTER_ID) values('배송문의', '예상배송일이 궁금합니다', '이효경');
insert into BOARD(BOARD_TITLE, BOARD_CONTENT, REGISTER_ID) values('수량문의', '한 박스에 몇개 들어있나요?', '홍한길');
insert into BOARD(BOARD_TITLE, BOARD_CONTENT, REGISTER_ID) values('재입고문의 드려요', '언제재입고될까요', '하영혜');
insert into BOARD(BOARD_TITLE, BOARD_CONTENT, REGISTER_ID) values('[상품]대량구매여부', '안녕하세요혹시100개200개단위로도구매가가능할까요', '하다연');
insert into BOARD(BOARD_TITLE, BOARD_CONTENT, REGISTER_ID) values('구매취소', '배송이 늦어져서 매장에서 직접 삼', '박믿음');
insert into BOARD(BOARD_TITLE, BOARD_CONTENT, REGISTER_ID) values('상품문의', '높이가몇cm인가요?', '최일성');
insert into BOARD(BOARD_TITLE, BOARD_CONTENT, REGISTER_ID) values('주소변경요', '주소가 잘못됐어요 수정되나요', '심재범');
insert into BOARD(BOARD_TITLE, BOARD_CONTENT, REGISTER_ID) values('교환문의', '색깔을 바꾸고싶어요', '정경모');
insert into BOARD(BOARD_TITLE, BOARD_CONTENT, REGISTER_ID) values('한개안왔습니다', '10개 주문했는데 9개 왔어요', '박승헌');
insert into BOARD(BOARD_TITLE, BOARD_CONTENT, REGISTER_ID) values('[배송요청사항]', '택배사가 어디인가요', '안영애');
commit;
select *from BOARD;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';
-3-
DELETE FROM BOARD WHERE BOARD_ID = 1;
DROP DATABASE IF EXISTS bbs2;