CREATE SEQUENCE BOARD_IDX_SEQ;

CREATE TABLE BOARD
(
	BOARD_IDX     CHAR(20) NOT NULL ,
	SUBJECT       VARCHAR2(250) NOT NULL ,
	CONTENT       VARCHAR2(150) NULL ,
	USER_NAME     VARCHAR2(50) NULL ,
	REG_DATE      DATETIME NULL ,
	READED_COUNT  NUMBER NULL
);

ALTER TABLE BOARD
	ADD CONSTRAINT  BOARD_PK PRIMARY KEY (BOARD_IDX);

COMMENT ON TABLE BOARD IS '게시판';

COMMENT ON COLUMN BOARD.BOARD_IDX IS '번호';
COMMENT ON COLUMN BOARD.SUBJECT IS '제목';
COMMENT ON COLUMN BOARD.CONTENT IS '내용';
COMMENT ON COLUMN BOARD.USER_NAME IS '작성자';
COMMENT ON COLUMN BOARD.REG_DATE IS '등록일';
COMMENT ON COLUMN BOARD.READED_COUNT IS '조회수';