# :cat: BOW-WOW (반려동물 커뮤니티 & 쇼핑몰) :dog:

<a href="http://bowwow.ml/store/storeMain"><img width="1792px" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114862179-2cf47c80-9e29-11eb-9914-48f131d82ca4.png"></a>
<b>[이미지를 누르시면 홈페이지로 이동합니다.] (사용한 아이디 : lsh4415, 비밀번호 : tmdgus12@)</b>
<br/><br/>

 <b>자신의 반려동물에 대한 자유로운 소통과 정보를 얻을 수 있는 커뮤니티와 반려동물을 위한 상품을 구매할 수 있는 스토어를 통해 카테고리별 상품을 확인 할 수 있고, 원하는 상품을 검색 하고 
구매할 수 있는 서비스를 제공하는 커뮤니티 & 스토어 사이트 입니다.</b>

<br>
<br>
<br>
<br>

# :mega: 목차
### 1. [개요](https://github.com/LSHyeon/FinalProject/blob/main/README.md#one-개요)

### 2. [담당모듈](https://github.com/LSHyeon/FinalProject/blob/main/README.md#two-담당모듈)

### 3. [개발환경](https://github.com/LSHyeon/FinalProject/blob/main/README.md#two-개발환경)

### 4. [분석 및 설계 과정]


<br>
<br>

## :one: 개요
 + 개발 기간 : 4주
   + 분석 및 설계 : 2021/03/11 ~ 2021/03/18 (약 1주)
   + 구현 : 2021/03/22 ~ 2021/04/13 (약 3주)
 + 총 개발 인원 : 7명
   + 시스템 개요 : MVC Model2 아키텍쳐를 기반으로 한 SpringFrameWork를 이용하여 만든 반려동물 커뮤니티 및 스토어 사이트 입니다.
   + BOW-WOW 사이트는 회원관리(회원정보, 반려동물 정보), 커뮤니티(반려동물 정보 & 자유로운 소통), 
    스토어(상품 페이지, 상품 상세 정보, 리뷰, 상품문의, 주문, 주문 내역) 모듈로 구성되어 있습니다.

<br>

## :two: 담당모듈

### 1. 상품 메인 페이지(storeMain.jsp)
 + 반려동물 상품을 최신 상품, MD 추천 핫한 상품을 8개 메인화면에서 확인 가능합니다.
 
<img width="861" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114862075-09c9cd00-9e29-11eb-82e2-97c4d970b993.png">
<br>
<img width="861" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114862748-de93ad80-9e29-11eb-9ca2-3015a016241e.png">
<br>

### 2. 카테고리별 상품 표시 및 페이징처리
 + 반려동물 상품을 카테고리별로 확인 할 수 있습니다.

<img width="861" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114863848-40084c00-9e2b-11eb-9fbf-d3ec7157458f.png">
<br>
<img width="861" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114865059-b8bbd800-9e2c-11eb-8f5f-a4a1ae8bda1a.png">
<br>

### 3. 상품 검색 및 페이징처리
 + 반려동물 상품을 검색 할 수 있습니다.

<img width="861" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114866506-9d51cc80-9e2e-11eb-9730-85e7211ff5fd.png">
<br>

### 4. 상품 상세 페이지
 + 상품 수량에 문자, 0, 공백이 들어올 수 없고 수량을 변경하는 순간 상품금액에 반영됩니다.
 + 로그인후 장바구니, 바로구매를 이용 할 수 있습니다.
 + 장바구니에 같은 상품을 담을 경우 이미 같은 상품이 있다는 메세지가 출력됩니다.

<img width="861" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114867331-9f685b00-9e2f-11eb-9dbc-4a3dff24f249.png">
<br>

<img width="861" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114869931-86ad7480-9e32-11eb-8cb1-2aef7c5255bc.png">
<br>

 + 로그인 후 상품에 대한 후기를 남길 수 있습니다. (유효성 검사 : 제목, 내용이 공백이면 작성하라는 메시지 출력 )
<img width="861" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114868881-5dd8af80-9e31-11eb-9850-89108654c3ee.png">
<br>

### 5. 장바구니 페이지
 + 로그인한 아이디로 담은 장바구니 목록을 보여줍니다.
 + 1가지 상품 삭제, 선택 상품 삭제가 가능합니다.
 + 장바구니에서 체크한 상품의 총 결제 금액만 계산이 됩니다.
 + 상품 수량 수정이 가능합니다.
 + 전체선택, 전체선택 해제가 가능합니다 (전체 선택 중 하나라도 해제가 되면 전체선택 체크해제, 상품전체가 체크되면 전체선택 자동체크)

<img width="861" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114872584-721eab80-9e35-11eb-9257-bb9cfd2405da.png">
<br>

<img width="861" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114873267-13a5fd00-9e36-11eb-8edf-9e88e11bcf3f.png">
<br>

### 6. 주문 페이지
 + 주문 페이지로 이동시 구매 할 샹품정보가 화면에 표시됩니다.
<img width="861" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114874754-967b8780-9e37-11eb-85e0-e00165937a3f.png">
<br>

 + 주소는 daum Postcode Service  사용하였습니다.
<img width="861" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114876652-7c42a900-9e39-11eb-8bf6-2dc72c91a42e.png">
<br>

 + 핸드폰번호, 주소를 작성하지 않거나, 동의 체크박스를 모두 체크하지 않으면 메세지가 출력됩니다.
 + 결제하기를 누르게 되면 결제내역 페이지로 이동합니다.
<img width="861" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114875957-cbd4a500-9e38-11eb-92e1-23ec9691a1ef.png">
<br>

### 7. 주문 내역 페이지
 + 주문 내역페이지에서는 로그인 한 아이디로 지금까지 구매한 주문내역을 보여줍니다.
 + 주문번호 클릭 시 주문상세내역으로 이동합니다.
<img width="861" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114877461-40f4aa00-9e3a-11eb-8e9f-40e738245f8c.png">
<br>

### 8. 주문 내역 페이지
 + 주문상세내역 페이지에서는 사용자가 선택한 주문상세정보를 보여줍니다.
 + 주문 취소가 가능합니다. (배송전 상품 한정)
<img width="861" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114878762-89f92e00-9e3b-11eb-8a59-f9051f4ff983.png">
<br>
<br>


## :three: 개발환경
<img width="861" alt="스크린샷" src="https://user-images.githubusercontent.com/73806316/114880834-633bf700-9e3d-11eb-8366-98ee84f0af33.png">
<br>






















 
