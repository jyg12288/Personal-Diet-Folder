<template>
  <div>
    <Heads :title="title" />
    <section id="section">
     
      <div class="tab-wrapper inner">
        <h3 class="tab-title">식사 종류</h3>
        <ul class="tab-content">
          <li class="active">아침</li>
          <li>아점</li>
          <li>점심</li>
          <li>간식</li>
          <li>저녁</li>
        </ul>
        <div class="tab-scroll"><div class="tab-scroll-bar"></div></div>
      </div>

      <div class="btn-wrapper inner">
        <button>간단 입력</button>
        <button>상세 입력</button>
      </div>
      <div class="inner">
        <div class="photo">
          <label for="chooseFile">
            <div class="addImg" id="addImg"></div>
          </label>
          <div id="image-show"></div>
          <input
            type="file"
            id="chooseFile"
            name="chooseFile"
            accept="image/*"
            onchange="loadFile(this)"
            required
            multiple
          />
        </div>
      </div>
      <div class="menu inner">
        <ul>
          <li>메뉴를 추가해주세요 :(</li>
        </ul>
      </div>
      <div class="food-wrapper inner">
        <h3>음식 검색</h3>
        <div class="food-search">
          <div class="food-img"></div>
          <input type="text" />
        </div>
        <table class="food-table">
          <tr>
            <th>즐겨찾기</th>
            <th>최근 식단</th>
            <th>내가 추가한</th>
          </tr>
          <tr>
            <td>잡곡밥</td>
            <td>밥류</td>
            <td>300kcal</td>
          </tr>
          <tr>
            <td>김치찌개</td>
            <td>찌개류</td>
            <td>51kcal</td>
          </tr>
          <tr>
            <td>어쩌고</td>
            <td>분류</td>
            <td>kcal</td>
          </tr>
          <tr>
            <td>즐겨찾기를</td>
            <td>선택했을 때</td>
            <td>화면입니다</td>
          </tr>
        </table>
        <button class="food-btn">저장하기</button>
      </div>
    </section>
  </div>
</template>

<script>

import Heads from "./components/header.vue";
export default {
  mounted() {
    
     // eslint-disable-next-line no-undef
     jQuery(".tab-content > li").off("click").click(function () {
          // eslint-disable-next-line no-undef
          jQuery(".tab-content > li").removeClass("active");
          // eslint-disable-next-line no-undef
          jQuery(this).addClass("active");

          // eslint-disable-next-line no-undef
          var offset = jQuery(this).offset().left - 15;
          // eslint-disable-next-line no-undef
          jQuery(".tab-scroll-bar").animate({ left: offset });
        });



  },
  name: "detail",
  data() {
    return {
      title : '상세 입력'
    };
  },
  components: {
    Heads: Heads,
  },
};
</script>

<style>
@import url("./assets/css/style.css");
</style>
