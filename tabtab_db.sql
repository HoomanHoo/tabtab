
/* Drop Triggers */

DROP TRIGGER TRI_supplier_information_supplier_code;



/* Drop Tables */

DROP TABLE auto_order_setting CASCADE CONSTRAINTS;
DROP TABLE delivery_state CASCADE CONSTRAINTS;
DROP TABLE detail_order CASCADE CONSTRAINTS;
DROP TABLE detail_selling CASCADE CONSTRAINTS;
DROP TABLE detail_warehousing CASCADE CONSTRAINTS;
DROP TABLE inventory CASCADE CONSTRAINTS;
DROP TABLE warehousing_info CASCADE CONSTRAINTS;
DROP TABLE order_info CASCADE CONSTRAINTS;
DROP TABLE selling_info CASCADE CONSTRAINTS;
DROP TABLE phar_information CASCADE CONSTRAINTS;
DROP TABLE question_board CASCADE CONSTRAINTS;
DROP TABLE supplier_information CASCADE CONSTRAINTS;
DROP TABLE id_default_info CASCADE CONSTRAINTS;
DROP TABLE medi_variation CASCADE CONSTRAINTS;
DROP TABLE medi_information CASCADE CONSTRAINTS;


/* Drop Sequences */
drop sequence auto_order_setting_seq;
drop sequence delivery_state_seq;
drop sequence detail_order_seq;
drop sequence detail_selling_seq;
drop sequence detail_warehousing_seq;
DROP SEQUENCE id_default_info_seq;
DROP SEQUENCE inventory_seq;
DROP SEQUENCE medi_information_seq;
DROP SEQUENCE medi_variation_seq;
drop sequence order_info_seq;
drop sequence phar_information_seq;
drop sequence question_board_seq;
drop sequence selling_info_seq;
DROP SEQUENCE supplier_information_seq;
DROP SEQUENCE warehousing_info_seq;

/* Create Sequences */

create sequence auto_order_setting_seq
start with 1
maxvalue 99999
increment by 1
nocache
nocycle;

create sequence delivery_state_seq
start with 1
maxvalue 99999
increment by 1
nocache
nocycle;

create sequence detail_order_seq
start with 1
maxvalue 99999
increment by 1
nocache
nocycle;

create sequence detail_selling_seq
start with 1
maxvalue 99999
increment by 1
nocache
nocycle;

create sequence detail_warehousing_seq
start with 1
maxvalue 99999
increment by 1
nocache
nocycle;

create sequence id_default_info_seq
start with 1
maxvalue 99999
increment by 1
nocache
nocycle;

create sequence inventory_seq
start with 1
maxvalue 99999
increment by 1
nocache
nocycle;

create sequence medi_information_seq
start with 1
maxvalue 99999
increment by 1
nocache
nocycle;

create sequence medi_variation_seq
start with 1
maxvalue 99999
increment by 1
nocache
nocycle;

create sequence order_info_seq
start with 1
maxvalue 99999
increment by 1
nocache
nocycle;

create sequence phar_information_seq
start with 1
maxvalue 99999
increment by 1
nocache
nocycle;

create sequence question_board_seq
start with 1
maxvalue 99999
increment by 1
nocache
nocycle;

create sequence selling_info_seq
start with 1
maxvalue 99999
increment by 1
nocache
nocycle;

create sequence supplier_information_seq
start with 1
maxvalue 99999
increment by 1
nocache
nocycle;

create sequence warehousing_info_seq
start with 1
maxvalue 99999
increment by 1
nocache
nocycle;



/* Create Tables */

-- 자동발주 설정
CREATE TABLE auto_order_setting
(
	-- 자동발주 설정 번호 : sequence로 1씩 증가
	ao_setting_num number PRIMARY KEY,
	-- 회원코드 : sequence로 자동증가하게 만들어야함
	mem_code number,
	-- 제품코드 : sequence 자동증가
	medi_code number,
	-- 자동발주 기준 수량
	trigger_quan number,
	-- 자동 발주 수량
	ao_quan number
);


-- 배송 상태
CREATE TABLE delivery_state
(
	-- 발주 번호 : 자동 수동 구분 번호 1,2 + yymmdd + 주문순번대로 0000~9999 - 근데 이거 가능한가?
	o_num number PRIMARY KEY,
	-- 배송 코드 : 미배송 10,
	-- 배송중 11,
	-- 배송완료 12
	d_code varchar2(6) DEFAULT '10',
	-- 배송일자
	d_date date
);


-- 발주상세
CREATE TABLE detail_order
(
	-- 상세발주번호 : sequence
	do_number number PRIMARY KEY,
	-- 발주 번호 : 자동 수동 구분 번호 1,2 + yymmdd + 주문순번대로 0000~9999 - 근데 이거 가능한가?
	o_num number,
	-- 제품코드 : sequence 자동증가
	medi_code number,
	-- 발주수량
	order_quan number,
	-- 발주가액
	supply_values number,
	-- memo
	memo varchar2(300)
);


-- 판매상세
CREATE TABLE detail_selling
(
	-- 상세 판매번호 : sequence
	ds_num number PRIMARY KEY,
	-- 판매번호 : sequence
	s_num number,
	-- 제품코드 : sequence 자동증가
	medi_code number,
	-- 판매수량
	ds_selling_quan number,
	-- 판매금액
	ds_selling_price number
);


-- 입고 상세
CREATE TABLE detail_warehousing
(
	-- 입고 상세 번호 : sequence
	dw_num number PRIMARY KEY,
	-- 입고번호 : sequnce
	w_num number,
	-- 제품코드 : sequence 자동증가
	medi_code number,
	-- 입고 상세 수량
	dw_quan number,
	-- 물품가액
	dw_supply_values number,
	-- 미발송 사유
	un_delivery_reason varchar2(90)
);


-- 계정 기본 정보
CREATE TABLE id_default_info
(
	-- 회원코드 : sequence로 자동증가하게 만들어야함
	mem_code number PRIMARY KEY,
	-- 이름
	name varchar2(21),
	-- 이메일
	email varchar2(60) UNIQUE,
	-- 비밀번호 : 한글 허용 안됨
	-- 특수문자@$%_ 만 허용
	-- 최소 글자수 6글자
	-- default는 !00000
	password varchar2(15) DEFAULT '!00000',
	-- 가입일
	r_date date DEFAULT sysdate,
	-- 계정 구분 코드
	mem_desc_code varchar2(10)
);


-- 재고
CREATE TABLE inventory
(
	-- 재고번호 : sequence로 1씩 증가
	inven_num number PRIMARY KEY,
	-- 회원코드 : sequence로 자동증가하게 만들어야함
	mem_code number,
	-- 제품코드 : sequence 자동증가
	medi_code number,
	-- 현재 재고량
	rt_inven number
);


-- 의약품 정보
CREATE TABLE medi_information
(
	-- 제품코드 : sequence 자동증가
	medi_code number PRIMARY KEY,
	-- 제품명
	medi_name varchar2(90) UNIQUE,
	-- 공급가액
	supply_value number,
	-- 판매가액 : 공급가액 + 1000
	selling_price number,
	-- 제조사
	manu_com varchar2(60),
	-- 주성분
	chief_ingre varchar2(90)
);


-- 의약품 종류
CREATE TABLE medi_variation
(
	-- 제품코드 : sequence 자동증가
	medi_code number PRIMARY KEY,
	-- 일반 전문의약품 구분 코드
	vari_code varchar2(8)
);


-- 발주
CREATE TABLE order_info
(
	-- 발주 번호 : 자동 수동 구분 번호 1,2 + yymmdd + 주문순번대로 0000~9999 - 근데 이거 가능한가?
	o_num number PRIMARY KEY,
	-- 회원코드 : sequence로 자동증가하게 만들어야함
	mem_code number,
	-- 공급자 코드
	supplier_code number(10) NOT NULL,
	-- 발주일 : sysdate
	o_date date DEFAULT sysdate,
	-- 메모
	memo varchar2(300),
	-- 총 공급가액 : sum(각 의약품 1개당 가격 * 수량)
	sum_supply_value number,
	-- 총 발주수량 : 각 의약품 발주량 전부 sum
	sum_order_count number
);


-- 약사계정 정보
CREATE TABLE phar_information
(
	-- 회원코드 : sequence로 자동증가하게 만들어야함
	mem_code number PRIMARY KEY,
	-- 사업장 이름
	p_name varchar2(60),
	-- 가입 신청 구분 코드
	apply_desc_code varchar2(6),
	-- 사업장 소재지 : Company Address의 약자입니다.
	-- 도로명 주소 찾기 등의 외부 API를 사용하지 않기 때문에 
	-- 주소 전체를 저장합니다.
	p_address varchar2(300),
	-- 사업자 등록번호 : Company Registration Number의 약자입니다
	-- - 가 포함되기 때문에 varcher2로 지정하였습니다.
	pr_num varchar2(40) UNIQUE,
	-- 사업자등록증 경로
	pr_img varchar2(300),
	-- 약사면허증 경로
	pl_img varchar2(300)
);


-- 문의게시판 게시글
CREATE TABLE question_board
(
	-- 글 번호 : sequence로 자동증가
	con_num number PRIMARY KEY,
	-- 회원코드 : sequence로 자동증가하게 만들어야함
	mem_code number NOT NULL,
	-- 글 제목
	con_subject varchar2(60),
	-- 글 내용
	content varchar2(900),
	-- 작성일
	w_date date DEFAULT sysdate,
	-- 게시글 그룹
	content_group number(6),
	-- 그룹 내 글 순서
	content_procedure number(6),
	-- 게시글 좌우 위치 레벨
	content_level number(6)
);


-- 판매
CREATE TABLE selling_info
(
	-- 판매번호 : sequence
	s_num number PRIMARY KEY,
	-- 회원코드 : sequence로 자동증가하게 만들어야함
	mem_code number,
	-- 판매일
	s_date date,
	-- 총 판매수량
	selling_quans number,
	-- 총 판매액
	selling_prices number
);


-- 공급자-어드민 계정 정보
CREATE TABLE supplier_information
(
	-- 공급자 코드
	supplier_code number(10) PRIMARY KEY,
	-- 회원코드 : sequence로 자동증가하게 만들어야함
	mem_code number NOT NULL UNIQUE,
	-- 공급자 이름
	supplier_name varchar2(30)
);


-- 입고
CREATE TABLE warehousing_info
(
	-- 입고번호 : sequnce
	w_num number PRIMARY KEY,
	-- 회원코드 : sequence로 자동증가하게 만들어야함
	mem_code number,
	-- 발주 번호 : 자동 수동 구분 번호 1,2 + yymmdd + 주문순번대로 0000~9999 - 근데 이거 가능한가?
	o_num number,
	-- 입고일
	w_date date,
	-- 총 공급가액
	supply_values number,
	-- 총 입고수량
	warehousing_quans number
);



/* Create Foreign Keys */

ALTER TABLE phar_information
	ADD FOREIGN KEY (mem_code)
	REFERENCES id_default_info (mem_code)
;


ALTER TABLE question_board
	ADD FOREIGN KEY (mem_code)
	REFERENCES id_default_info (mem_code)
;


ALTER TABLE supplier_information
	ADD FOREIGN KEY (mem_code)
	REFERENCES id_default_info (mem_code)
;


ALTER TABLE auto_order_setting
	ADD FOREIGN KEY (medi_code)
	REFERENCES medi_information (medi_code)
;


ALTER TABLE detail_order
	ADD FOREIGN KEY (medi_code)
	REFERENCES medi_information (medi_code)
;


ALTER TABLE detail_selling
	ADD FOREIGN KEY (medi_code)
	REFERENCES medi_information (medi_code)
;


ALTER TABLE detail_warehousing
	ADD FOREIGN KEY (medi_code)
	REFERENCES medi_information (medi_code)
;


ALTER TABLE inventory
	ADD FOREIGN KEY (medi_code)
	REFERENCES medi_information (medi_code)
;


ALTER TABLE medi_variation
	ADD FOREIGN KEY (medi_code)
	REFERENCES medi_information (medi_code)
;


ALTER TABLE delivery_state
	ADD FOREIGN KEY (o_num)
	REFERENCES order_info (o_num)
;


ALTER TABLE detail_order
	ADD FOREIGN KEY (o_num)
	REFERENCES order_info (o_num)
;


ALTER TABLE warehousing_info
	ADD FOREIGN KEY (o_num)
	REFERENCES order_info (o_num)
;


ALTER TABLE auto_order_setting
	ADD FOREIGN KEY (mem_code)
	REFERENCES phar_information (mem_code)
;


ALTER TABLE inventory
	ADD FOREIGN KEY (mem_code)
	REFERENCES phar_information (mem_code)
;


ALTER TABLE order_info
	ADD FOREIGN KEY (mem_code)
	REFERENCES phar_information (mem_code)
;


ALTER TABLE selling_info
	ADD FOREIGN KEY (mem_code)
	REFERENCES phar_information (mem_code)
;


ALTER TABLE warehousing_info
	ADD FOREIGN KEY (mem_code)
	REFERENCES phar_information (mem_code)
;


ALTER TABLE detail_selling
	ADD FOREIGN KEY (s_num)
	REFERENCES selling_info (s_num)
;


ALTER TABLE order_info
	ADD FOREIGN KEY (supplier_code)
	REFERENCES supplier_information (supplier_code)
;


ALTER TABLE detail_warehousing
	ADD FOREIGN KEY (w_num)
	REFERENCES warehousing_info (w_num)
;


/* Comments */

COMMENT ON TABLE auto_order_setting IS '자동발주 설정';
COMMENT ON COLUMN auto_order_setting.ao_setting_num IS '자동발주 설정 번호 : sequence로 1씩 증가';
COMMENT ON COLUMN auto_order_setting.mem_code IS '회원코드 : sequence로 자동증가하게 만들어야함';
COMMENT ON COLUMN auto_order_setting.medi_code IS '제품코드 : sequence 자동증가';
COMMENT ON COLUMN auto_order_setting.trigger_quan IS '자동발주 기준 수량';
COMMENT ON COLUMN auto_order_setting.ao_quan IS '자동 발주 수량';
COMMENT ON TABLE delivery_state IS '배송 상태';
COMMENT ON COLUMN delivery_state.o_num IS '발주 번호 : 자동 수동 구분 번호 1,2 + yymmdd + 주문순번대로 0000~9999 - 근데 이거 가능한가?';
COMMENT ON COLUMN delivery_state.d_code IS '배송 코드 : 미배송 10,
배송중 11,
배송완료 12';
COMMENT ON COLUMN delivery_state.d_date IS '배송일자';
COMMENT ON TABLE detail_order IS '발주상세';
COMMENT ON COLUMN detail_order.do_number IS '상세발주번호 : sequence';
COMMENT ON COLUMN detail_order.o_num IS '발주 번호 : 자동 수동 구분 번호 1,2 + yymmdd + 주문순번대로 0000~9999 - 근데 이거 가능한가?';
COMMENT ON COLUMN detail_order.medi_code IS '제품코드 : sequence 자동증가';
COMMENT ON COLUMN detail_order.order_quan IS '발주수량';
COMMENT ON COLUMN detail_order.supply_values IS '발주가액';
COMMENT ON COLUMN detail_order.memo IS 'memo';
COMMENT ON TABLE detail_selling IS '판매상세';
COMMENT ON COLUMN detail_selling.ds_num IS '상세 판매번호 : sequence';
COMMENT ON COLUMN detail_selling.s_num IS '판매번호 : sequence';
COMMENT ON COLUMN detail_selling.medi_code IS '제품코드 : sequence 자동증가';
COMMENT ON COLUMN detail_selling.ds_selling_quan IS '판매수량';
COMMENT ON COLUMN detail_selling.ds_selling_price IS '판매금액';
COMMENT ON TABLE detail_warehousing IS '입고 상세';
COMMENT ON COLUMN detail_warehousing.dw_num IS '입고 상세 번호 : sequence';
COMMENT ON COLUMN detail_warehousing.w_num IS '입고번호 : sequnce';
COMMENT ON COLUMN detail_warehousing.medi_code IS '제품코드 : sequence 자동증가';
COMMENT ON COLUMN detail_warehousing.dw_quan IS '입고 상세 수량';
COMMENT ON COLUMN detail_warehousing.dw_supply_values IS '물품가액';
COMMENT ON COLUMN detail_warehousing.un_delivery_reason IS '미발송 사유';
COMMENT ON TABLE id_default_info IS '계정 기본 정보';
COMMENT ON COLUMN id_default_info.mem_code IS '회원코드 : sequence로 자동증가하게 만들어야함';
COMMENT ON COLUMN id_default_info.name IS '이름';
COMMENT ON COLUMN id_default_info.email IS '이메일';
COMMENT ON COLUMN id_default_info.password IS '비밀번호 : 한글 허용 안됨
특수문자@$%_ 만 허용
최소 글자수 6글자
default는 !00000';
COMMENT ON COLUMN id_default_info.r_date IS '가입일';
COMMENT ON COLUMN id_default_info.mem_desc_code IS '계정 구분 코드';
COMMENT ON TABLE inventory IS '재고';
COMMENT ON COLUMN inventory.inven_num IS '재고번호 : sequence로 1씩 증가';
COMMENT ON COLUMN inventory.mem_code IS '회원코드 : sequence로 자동증가하게 만들어야함';
COMMENT ON COLUMN inventory.medi_code IS '제품코드 : sequence 자동증가';
COMMENT ON COLUMN inventory.rt_inven IS '현재 재고량';
COMMENT ON TABLE medi_information IS '의약품 정보';
COMMENT ON COLUMN medi_information.medi_code IS '제품코드 : sequence 자동증가';
COMMENT ON COLUMN medi_information.medi_name IS '제품명';
COMMENT ON COLUMN medi_information.supply_value IS '공급가액';
COMMENT ON COLUMN medi_information.selling_price IS '판매가액 : 공급가액 + 1000';
COMMENT ON COLUMN medi_information.manu_com IS '제조사';
COMMENT ON COLUMN medi_information.chief_ingre IS '주성분';
COMMENT ON TABLE medi_variation IS '의약품 종류';
COMMENT ON COLUMN medi_variation.medi_code IS '제품코드 : sequence 자동증가';
COMMENT ON COLUMN medi_variation.vari_code IS '일반 전문의약품 구분 코드';
COMMENT ON TABLE order_info IS '발주';
COMMENT ON COLUMN order_info.o_num IS '발주 번호 : 자동 수동 구분 번호 1,2 + yymmdd + 주문순번대로 0000~9999 - 근데 이거 가능한가?';
COMMENT ON COLUMN order_info.mem_code IS '회원코드 : sequence로 자동증가하게 만들어야함';
COMMENT ON COLUMN order_info.supplier_code IS '공급자 코드';
COMMENT ON COLUMN order_info.o_date IS '발주일 : sysdate';
COMMENT ON COLUMN order_info.memo IS '메모';
COMMENT ON COLUMN order_info.sum_supply_value IS '총 공급가액 : sum(각 의약품 1개당 가격 * 수량)';
COMMENT ON COLUMN order_info.sum_order_count IS '총 발주수량 : 각 의약품 발주량 전부 sum';
COMMENT ON TABLE phar_information IS '약사계정 정보';
COMMENT ON COLUMN phar_information.mem_code IS '회원코드 : sequence로 자동증가하게 만들어야함';
COMMENT ON COLUMN phar_information.p_name IS '사업장 이름';
COMMENT ON COLUMN phar_information.apply_desc_code IS '가입 신청 구분 코드';
COMMENT ON COLUMN phar_information.p_address IS '사업장 소재지 : Company Address의 약자입니다.
도로명 주소 찾기 등의 외부 API를 사용하지 않기 때문에 
주소 전체를 저장합니다.';
COMMENT ON COLUMN phar_information.pr_num IS '사업자 등록번호 : Company Registration Number의 약자입니다
- 가 포함되기 때문에 varcher2로 지정하였습니다.';
COMMENT ON COLUMN phar_information.pr_img IS '사업자등록증 경로';
COMMENT ON COLUMN phar_information.pl_img IS '약사면허증 경로';
COMMENT ON TABLE question_board IS '문의게시판 게시글';
COMMENT ON COLUMN question_board.con_num IS '글 번호 : sequence로 자동증가';
COMMENT ON COLUMN question_board.mem_code IS '회원코드 : sequence로 자동증가하게 만들어야함';
COMMENT ON COLUMN question_board.con_subject IS '글 제목';
COMMENT ON COLUMN question_board.content IS '글 내용';
COMMENT ON COLUMN question_board.w_date IS '작성일';
COMMENT ON COLUMN question_board.content_group IS '게시글 그룹';
COMMENT ON COLUMN question_board.content_procedure IS '그룹 내 글 순서';
COMMENT ON COLUMN question_board.content_level IS '게시글 좌우 위치 레벨';
COMMENT ON TABLE selling_info IS '판매';
COMMENT ON COLUMN selling_info.s_num IS '판매번호 : sequence';
COMMENT ON COLUMN selling_info.mem_code IS '회원코드 : sequence로 자동증가하게 만들어야함';
COMMENT ON COLUMN selling_info.s_date IS '판매일';
COMMENT ON COLUMN selling_info.selling_quans IS '총 판매수량';
COMMENT ON COLUMN selling_info.selling_prices IS '총 판매액';
COMMENT ON TABLE supplier_information IS '공급자-어드민 계정 정보';
COMMENT ON COLUMN supplier_information.supplier_code IS '공급자 코드';
COMMENT ON COLUMN supplier_information.mem_code IS '회원코드 : sequence로 자동증가하게 만들어야함';
COMMENT ON COLUMN supplier_information.supplier_name IS '공급자 이름';
COMMENT ON TABLE warehousing_info IS '입고';
COMMENT ON COLUMN warehousing_info.w_num IS '입고번호 : sequnce';
COMMENT ON COLUMN warehousing_info.mem_code IS '회원코드 : sequence로 자동증가하게 만들어야함';
COMMENT ON COLUMN warehousing_info.o_num IS '발주 번호 : 자동 수동 구분 번호 1,2 + yymmdd + 주문순번대로 0000~9999 - 근데 이거 가능한가?';
COMMENT ON COLUMN warehousing_info.w_date IS '입고일';
COMMENT ON COLUMN warehousing_info.supply_values IS '총 공급가액';
COMMENT ON COLUMN warehousing_info.warehousing_quans IS '총 입고수량';

/* Insert prepared data */

insert into medi_information values(medi_information_seq.nextval, '아세타졸정', 147, 1470, '한림제약', 'Acetazolamide');
insert into medi_information values(medi_information_seq.nextval, '고려아시클로버크림', 1114, 11140, '고려제약', 'Acyclovir');
insert into medi_information values(medi_information_seq.nextval, '국제아시클로버정', 671, 6710, '국제약품', 'Acyclovir');
insert into medi_information values(medi_information_seq.nextval, '아이오피딘0.5%점안액', 12156, 121560, '한국노바티스', 'Apraclonidine Hydrochloride');
insert into medi_information values(medi_information_seq.nextval, '대웅아지트로마이신건조시럽', 229, 2290, '한국글로벌제약', 'Azithromycin Hydrate');
insert into medi_information values(medi_information_seq.nextval, '겐트리손크림(20g)', 1000, 10000, '신풍제약', 'Betamethasone Dipropionate');
insert into medi_information values(medi_information_seq.nextval, '나미야지크림(20g)' , 960, 9600, '씨엠지제약', 'Betamethasone Dipropionate');
insert into medi_information values(medi_information_seq.nextval, '베탁정', 374, 3740, '진양제약', 'Betaxolol Hydrochloride');
insert into medi_information values(medi_information_seq.nextval, '부광켈론정', 368, 3680, '부광약품', 'Betaxolol Hydrochloride');
insert into medi_information values(medi_information_seq.nextval, '리포직점안갤', 4550, 45500, '바슈헬스코리아', 'Caomer');
insert into medi_information values(medi_information_seq.nextval, '버제니오정100mg', 49236, 492360, '한국릴리', 'Abemaciclib');
insert into medi_information values(medi_information_seq.nextval, '자이티가정500mg', 16780, 167800, '한국얀센', 'Abiraterone Acetate');
insert into medi_information values(medi_information_seq.nextval, '칼퀀스캡슐100mg', 23100, 231000, '한국아스트라제네카', 'Acalabrutinib');
insert into medi_information values(medi_information_seq.nextval, '피크레이정', 13213, 132130, '한국노바티스', 'Alpelisib');
insert into medi_information values(medi_information_seq.nextval, '렘트라다주', 10371700, 103717000, '사노피아벤티스코리아', 'Alemtuzumab');
insert into medi_information values(medi_information_seq.nextval, '아나스토정', 2795, 27950, '보령', 'Anastrozole');
insert into medi_information values(medi_information_seq.nextval, '아리미덱스정', 2839, 28390, '한국아스트라제네카', 'Anastrozole');
insert into medi_information values(medi_information_seq.nextval, '바벤시오주', 1226243, 12262430, '머크', 'Avelumab');
insert into medi_information values(medi_information_seq.nextval, '온코타이스주', 69751, 697510, '한국엠에스디', 'BCG Strain Tice');
insert into medi_information values(medi_information_seq.nextval, '벤리타스주400mg', 608988, 6089880, '글락소스미스클라인', 'Belimumab');
insert into medi_information values(medi_information_seq.nextval, '네오티가손캡슐10mg', 535, 5350, '종근당', 'Acitretin');
insert into medi_information values(medi_information_seq.nextval, '칼로덤', 164412, 1644120, '테고사이언스', 'Allogenic Keratinocyte');
insert into medi_information values(medi_information_seq.nextval, '나이트랄크림', 2821, 28210, '일양약품', 'Flutrimazole');
insert into medi_information values(medi_information_seq.nextval, '베로단연고', 22500, 225000, '동성제약', 'Halcinonide');
insert into medi_information values(medi_information_seq.nextval, '니메겐연지캡슐', 305, 3050, '메디카코리아', 'Isotretinoin');
insert into medi_information values(medi_information_seq.nextval, '레씨범연질캡슐', 241, 2410, '위더스제약', 'Isotretinoin');
insert into medi_information values(medi_information_seq.nextval, '박테로신연고(15g)', 2149, 21490, '제뉴원사이언스', 'Mupiroscin');
insert into medi_information values(medi_information_seq.nextval, '로도질정', 136, 1360, '사노피아벤티스코리아', 'Metronidazole');
insert into medi_information values(medi_information_seq.nextval, '로멕스겔(5g)', 1881, 18810, '더유제약', 'Metronidazole');
insert into medi_information values(medi_information_seq.nextval, '로나실덤겔', 3765, 37650, '바이넥스', 'Terbinafine');
insert into medi_information values(medi_information_seq.nextval, '미모나크림', 1584, 15840, '씨엠지제약', 'Urea');
insert into medi_information values(medi_information_seq.nextval, '로비큐아정100mg', 158457, 1584570, '한국화이자제약', 'Lorlatinib');
insert into medi_information values(medi_information_seq.nextval, '알케란정', 1192, 11920, '삼일제약', 'Melphalan');
insert into medi_information values(medi_information_seq.nextval, '대원아시클로버정', 747, 7470, '대원제약', 'Acyclovir');
insert into medi_information values(medi_information_seq.nextval, '곰실린캡슐', 95, 950, '대웅제약', 'Amoxicillin Hydrate');
insert into medi_information values(medi_information_seq.nextval, '구멘틴375mg정', 300, 3000, '한국프라임제약', 'Amoxicillin Hydrate');
insert into medi_information values(medi_information_seq.nextval, '경보세포탁심나트륨주1g', 4233, 42330, '경보제약', 'Cefotaxime Sodium');
insert into medi_information values(medi_information_seq.nextval, '대웅세포탁심나트륨주1g', 4044, 40440, '대웅바이오', 'Cefotaxime Sodium');
insert into medi_information values(medi_information_seq.nextval, '뉴클래토건조시럽125mg/5ml', 100, 1000, '안국뉴팜', 'Clarithromycin');
insert into medi_information values(medi_information_seq.nextval, '뉴클래토정250mg', 85, 850, '안국뉴팜', 'Clarithromycin');
insert into medi_information values(medi_information_seq.nextval, '경남황산겐타마이신클림', 1000, 10000, '경남제약', 'Gentamicin Sulfate');
insert into medi_information values(medi_information_seq.nextval, '대한5%쏠비톨주사액', 1370, 13700, '대한약품공업', 'D-Sorbitol');
insert into medi_information values(medi_information_seq.nextval, '라싸크린액', 500, 5000, '동인당제약', 'D-Sorbitol');
insert into medi_information values(medi_information_seq.nextval, '그라제정', 65, 650, '광동제약', 'Lipase');
insert into medi_information values(medi_information_seq.nextval, '숙시탈과립', 90, 900, '일동제약', 'Lipase');
insert into medi_information values(medi_information_seq.nextval, '설파제정', 86, 860, '제이더블유중외제약', 'Lipase');
insert into medi_information values(medi_information_seq.nextval, '훼스탈골드정', 100, 1000, '한독', 'Lipase');
insert into medi_information values(medi_information_seq.nextval, '겐틴정(용담사간탕)', 132, 1320, '한국신텍스제약', 'Plantage Seed');
insert into medi_information values(medi_information_seq.nextval, '네프신정', 150, 1500, '한솔신약', 'Plantage Seed');
insert into medi_information values(medi_information_seq.nextval, '간디바캡슐', 260, 2600, '삼익제약', 'Ursodeoxycholic Acid');
insert into medi_information values(medi_information_seq.nextval, '가네듀오캡슐', 221, 2210, '종근당', 'Ursodeoxycholic Acid');
insert into medi_information values(medi_information_seq.nextval, '그라톤정', 128, 1280, '서울제약', 'Ginkgo Leaf');
insert into medi_information values(medi_information_seq.nextval, '기네프정', 185, 1850, '경보제약', 'Ginkgo Leaf');
insert into medi_information values(medi_information_seq.nextval, '기넥신에프연질캡슐120mg', 219, 2190, '에스케이케미칼', 'Ginkgo Leaf');
insert into medi_information values(medi_information_seq.nextval, '니페딕스지속정', 345, 3450, '광동제약', 'Nifedipine');
insert into medi_information values(medi_information_seq.nextval, '니페론씨알40서방정', 290, 2900, '서방정', 'Nifedipine');
insert into medi_information values(medi_information_seq.nextval, '명문니트로글리세린설하정0.6mg', 41, 410, '명문제약', 'Nitroglycerin');
insert into medi_information values(medi_information_seq.nextval, '렉토지연고', 1350, 13500, '에이치엘비제약', 'Nitroglycerin');
insert into medi_information values(medi_information_seq.nextval, '앤지덤패치', 2500, 25000, '삼양홀딩스', 'Nitroglycerin');
insert into medi_information values(medi_information_seq.nextval, '게므론골드정', 120, 1200, '대웅제약', 'Ubidecarenone');
insert into medi_information values(medi_information_seq.nextval, '고운자임맘정', 180, 1800, '종근당', 'Ubidecarenone');
insert into medi_information values(medi_information_seq.nextval, '나레틸정', 506, 5060, '진양제약', 'Acetyl-L-Carnitine Hydrochloride');
insert into medi_information values(medi_information_seq.nextval, '네오카틴정', 543, 5430, '구주제약', 'Acetyl-L-Carnitine Hydrochloride');
insert into medi_information values(medi_information_seq.nextval, '아고틴정', 558, 5580, '환인제약', 'Agomelatine');
insert into medi_information values(medi_information_seq.nextval, '명문알프라졸람정', 83, 830, '명문제약', 'Alprazolam');
insert into medi_information values(medi_information_seq.nextval, '아졸락정', 154, 1540, '유니메드제약', 'Alprazolam');
insert into medi_information values(medi_information_seq.nextval, '아디센정', 194, 1940, '한화제약', 'Amoxapine');
insert into medi_information values(medi_information_seq.nextval, '로나센정2mg', 271, 2710, '부광약품', 'Blonanserin');
insert into medi_information values(medi_information_seq.nextval, '로나큐정2mg', 256, 2560, '환인제약', 'Blonanserin');
insert into medi_information values(medi_information_seq.nextval, '누트로민주', 9750, 97500, '유유제약', 'Cerebrolysin');
insert into medi_information values(medi_information_seq.nextval, '뉴로베라주', 8980, 89800, '현대약품', 'Cerebrolysin');
insert into medi_information values(medi_information_seq.nextval, '환인아캄프로세이트정', 135, 1350, '한인제약', 'Acamprosate Calcium');
insert into medi_information values(medi_information_seq.nextval, '명인아미트리프틸린염산염', 20, 200, '명인제약', 'Amitriptyline Hydrochloride');
insert into medi_information values(medi_information_seq.nextval, '에나폰정10mg', 20, 2000, '환인제약', 'Amitriptyline Hydrochloride');
insert into medi_information values(medi_information_seq.nextval, '마도파에취비에스캡슐', 194, 1940, '한국로슈', 'Benserazide Hydrochloride');
insert into medi_information values(medi_information_seq.nextval, '명도파정25/100mg', 142, 1420, '명인제약', 'Benserazide Hydrochloride');
insert into medi_information values(medi_information_seq.nextval, '메네스에스정', 45, 450, '동구바이오제약', 'Betahistine Hydrochloride');
insert into medi_information values(medi_information_seq.nextval, '메네신정', 45, 450, '테라젠이텍스', 'Betahistine Hydrochloride');
insert into medi_information values(medi_information_seq.nextval, '도스티넨정0.25mg', 814, 8140, '다림바이오텍', 'Cabergoline');
insert into medi_information values(medi_information_seq.nextval, '카버락틴정', 1221, 12210, '동구바이오제약', 'Cabergoline');
insert into medi_information values(medi_information_seq.nextval, '동광둘룩세틴캡슐30mg', 404, 4040, '동광제약', 'Duloxetine Hydrochloride');
insert into medi_information values(medi_information_seq.nextval, '리치칼슘연질캡슐', 159, 1590, '신일제약', 'Alfacalcidol');
insert into medi_information values(medi_information_seq.nextval, '아시돌연질캡슐', 244, 2440, '한국프라인제약', 'Alfacalcidol');
insert into medi_information values(medi_information_seq.nextval, '가드렛정100mg', 369, 3690, '제이더블유중외제약', 'Anagliptin');
insert into medi_information values(medi_information_seq.nextval, '가드메트정100/100mg', 369, 3690, '제이더블유중외제약', 'Anagliptin');
insert into medi_information values(medi_information_seq.nextval, '바독시정', 562, 5620, '하나제약', 'Bazedoxifene Acetate');
insert into medi_information values(medi_information_seq.nextval, '바독펜정', 562, 5620, '건일바이오팜', 'Bazedoxifene Acetate');
insert into medi_information values(medi_information_seq.nextval, '겐트리손크림(10g)', 530, 5300, '신풍제약', 'Betamethasone Dipropionate');
insert into medi_information values(medi_information_seq.nextval, '엑세그란정', 325, 3250, '동아에스티', 'Zonisamide');
insert into medi_information values(medi_information_seq.nextval, '글로베타메타손주', 424, 4240, '한국글로벌제약', 'Sodium Phosphate');
insert into medi_information values(medi_information_seq.nextval, '동광베타손주', 300, 3000, '동광제약', 'Sodium Phosphate');
insert into medi_information values(medi_information_seq.nextval, '뉴신타서방정', 1174, 11740, '한국얀센', 'Tapentatol Hydrochloide');
insert into medi_information values(medi_information_seq.nextval, '뉴신타아이알정', 528, 5280, '한국얀센', 'Tapentatol Hydrochloide');
insert into medi_information values(medi_information_seq.nextval, '한림프로타민황산염주사액', 1412, 14120, '한림제약', 'Protamine Sulfate');


insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '1');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');
insert into medi_variation values(medi_variation_seq.nextval, '2');



