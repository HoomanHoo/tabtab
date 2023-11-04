# 프로젝트 개요

약국 재고 관리 서비스 tabtab 입니다.
현 약국 재고 관리 어플리케이션은 난잡한 UI와 사용자의 PC에 설치하여 사용하는 형태로 보급률이 낮은 상황입니다. 
따라서 저희는 웹 기반으로 간편하게 사용할 수 있으며 세련된 UI를 목표로 tabtab 서비스를 만들고자 하였습니다.

# 사용 기술
- Back-end
  - Java 11 (Oracle JDK)
  - Spring 4
  - MyBatis 3.0
  - Oracle xe 11g
- Front-end
  - JQuery 3.6.4
  - Bootstrap 5.1.3

# 프로젝트 진행 기간 및 인원
- 2023.04.05~2023.06.02 (풀 스택 3명)

# 역할 분담
- HoomanHoo
  - 담당 업무 - 조장, Front-End, Back-End
  - 조장
    - 상세 일정 관리
    - 업무 분장
    - 소스 코드 관리
  - Front-End
    - JQuery, ajax를 이용하여 자동 발주 대상 상품 삭제, 상품 입고 처리, 상품 판매 기능 구현
    - JQuery, Vanilla Javascript를 이용하여 화면 내 요소 추가, 삭제 구현
  - Back-End
    - 요구 사항 및 사용자 기준 기능 분석 후 DB 설계 진행
    - 재고 수량을 기준으로 어플리케이션 레벨에서의 자동 발주 기능 구현
    - 자동 발주 설정에 대한 CRUD 구현
    - 상품 등록, 변경 기능 구현
    - MultipartRequest 클래스(cos 라이브러리)를 이용한 이미지 업로드 기능 구현
    - 발주 기능 및 배송 상태 확인 기능 구현
    - 판매 기능 구현
    - 비밀번호 찾기 및 결과 메일 발송 기능 구현
    - Kakao Login API, Jackson 라이브러리를 이용한 카카오 계정 연동 관리자 계정 로그인 기능 구현

- yjaehee
  - 유저 정보 관리 기능, 관리자 관리자 기능 담당

- 이XX
  - 재고 페이지, 검색 기능 담당  

# Database 설계

![ERD최종](https://github.com/HoomanHoo/tabtab/assets/129934364/b5773cd7-286c-4ab2-9f94-68db0675ff5d)

# 시스템 구조도

![시스템 구조도](https://github.com/HoomanHoo/tabtab/assets/129934364/9032513a-b9fd-4135-b2b1-5ed496bcb7d4)




