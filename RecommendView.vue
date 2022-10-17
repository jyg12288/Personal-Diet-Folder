<template>
  <v-app>
  <!-- 상단 -->
  <nav>
  <!-- 툴바 작성 -->
  <v-toolbar elevation="1" app>
      <!-- 툴바 아이콘 -->
      <v-btn icon>
      <v-icon>mdi-chevron-left</v-icon>
      </v-btn>
        <!-- 툴바 타이틀 작성 -->
        <div style="text-align:center; width:80%; color:blue;">추천</div>
      </v-toolbar>
  </nav>
  <!-- 메인 -->
  <v-main>

      <!-- 음식 재료별 카테고리 -->
      <v-card flat height="270px" tile>
          <div class="categorytitle" style="margin-top:10px;">음식 재료별 카테고리</div>
          <v-col style="background-color:#EEEEEE; text-align: center;">
            <!-- 갑각류 -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/crab_갑각류.png"></v-img>갑각류</v-col></v-btn>
            <!-- 견과류 -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/peanuts_견과류.png"></v-img>견과류</v-col></v-btn>
            <!-- 과일 -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/peach_과일.png"></v-img>과일</v-col></v-btn>
            <!-- 달걀 및 유제품 -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/glass-of-milk_달걀및유제품.png" style="margin-left:15px;"></v-img>달걀 및 유제품</v-col></v-btn>
            <!-- 육류 -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/cut-of-meat_육류.png"></v-img>육류</v-col></v-btn>
            <!-- 해산물 -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/fish_해산물.png"></v-img>해산물</v-col></v-btn>
          </v-col>
      </v-card>

      <!-- 칼로리별 카테고리 -->
      <v-card flat height="270px" tile>
          <div class="categorytitle">칼로리별 카테고리</div>
          <v-col style="background-color:#EEEEEE;text-align: center;" >
            <!-- 50-100Kcal -->
            <router-link to="/category" style="text-decoration:none;">
              <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/watermelon 50-100.png" style="margin-left:13px;"></v-img>50-100kcal</v-col></v-btn>
            </router-link>
            <!-- 100-200Kcal -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/sandwich100-200.png" style="margin-left:15px;"></v-img>100-200kcal</v-col></v-btn>
            <!-- 200-300Kcal -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/pineapple_과일.png" style="margin-left:15px;"></v-img>200-300kcal</v-col></v-btn>
            <!-- 300-400Kcal -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;" ><v-col><v-img max-height="100" max-width="70" src="../assets/pancakes_300-400.png" style="margin-left:15px;"></v-img>300-400kcal</v-col></v-btn>
            <!-- 400-500Kcal -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/curry-rice_400-500.png" style="margin-left:15px;"></v-img>400-500kcal</v-col></v-btn>
            <!-- 500-600Kcal -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;" ><v-col><v-img max-height="100" max-width="70" src="../assets/bentobox_500-600.png" style="margin-left:15px;"></v-img>500-600kcal</v-col></v-btn>
          </v-col>
      </v-card>

      <!-- 음식 테마별 카테고리 -->
      <v-card flat height="310px" tile>
          <div class="categorytitle">음식 테마별 카테고리</div>
          <v-col style="background-color:#EEEEEE;text-align: center;" >
            <!-- 채식주의자 -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/cheese-wedge_채식주의자.png" style="margin-left:2px;"></v-img>채식주의자</v-col></v-btn>
            <!-- 비건 -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/seedling_비건.png" ></v-img>비건</v-col></v-btn>
            <!-- 견과류 -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/chestnut_견과류.png" style="margin-left:3px;"></v-img>저탄수화물</v-col></v-btn>
            <!-- 저지방 -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;" ><v-col><v-img max-height="100" max-width="70" src="../assets/cucumber_저지방.png"></v-img>저지방</v-col></v-btn>
            <!-- 저칼로리 -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/green-apple_저칼로리.png"></v-img>저칼로리</v-col></v-btn>
            <!-- 고단백질 -->
            <v-btn height="100" elevation="2" style="background-color:#FFFFFF;" ><v-col><v-img max-height="100" max-width="70" src="../assets/cooking_고단백질.png"></v-img>고단백질</v-col></v-btn>
          </v-col>
      </v-card>
  </v-main>
  </v-app>
</template>

<script>
  export default {
    data: () => ({
      cards: [
        { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', flex: 12 },
        { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', flex: 6 },
        { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', flex: 6 },
      ],
    }),
  }
</script>

<style scoped>
p{
  color: blue  !important;
  text-align : center;
  margin-top:40%;
}
button{
  width:110px;
  height: 200px;
  margin-right:4px;
  margin-bottom:5px;
}
img{
  width:50px;
}
div.categorytitle{
  margin-left:20px;
}
</style>