<template>
    <v-app>
      <!-- 상단 -->
      <v-container style="text-aligin:center; ">
        <v-btn fab small color="balck" elevation="0">
          <router-link to="/category" style="text-decoration:none;">
            <v-icon dark> mdi-chevron-double-left </v-icon>
          </router-link>
        </v-btn>
        치아시드를 곁들인 딸기 마멀레이드
      </v-container>
      <!-- 메인 -->
      <v-main>
        <div class="text-center">
          <v-img height="300" src="https://cdn.vuetifyjs.com/images/cards/cooking.png" ></v-img>
        </div>
        <v-row style="text-align:center;">
          <v-col class="component">
          <!-- 칼로리 시간 내용 -->
            <v-icon>mdi-clock-outline</v-icon>
            <div>15분</div>
          </v-col>
          <v-col>
            <v-icon>mdi-silverware</v-icon>
            <div>쉬움</div>
          </v-col>
          <v-col>
            <v-icon>mdi-fire-circle</v-icon>
            <div>58kcal</div>
          </v-col>  
        </v-row>
  
        <!-- 음식 설명 -->
        <v-container>
          치아시드를 곁들인 딸기 마멀레이드 음식 설명입니다.
        </v-container>
        <!-- 칩 내용 -->
          <v-chip style="margin-left:10px;">0~50kcal</v-chip>
          <v-chip style="margin-left:10px;">고식이섬유</v-chip>
          <v-chip style="margin-left:10px;">과일</v-chip>
          <v-chip style="margin-left:10px;">글루텐프리</v-chip>
      </v-main>

      <div class="footer">
            <v-bottom-navigation
            color="blue"
            grow
            absolute>
            <router-link to="/MainView" style="text-decoration-line: none; padding-top:3px;">
                <v-btn value="홈">홈<br/>
                    <v-icon size="30px">mdi-home</v-icon>
                </v-btn>
            </router-link>
            <router-link to="/RecommendView" style="text-decoration-line: none; padding-top:3px;">
                <v-btn value="추천">추천<br/>
                    <v-icon size="30px">mdi-heart</v-icon>
                </v-btn>
            </router-link>
            <router-link to="/gandanView" style="text-decoration-line: none; padding-top:3px;"> 
                <v-btn value="식단"><br/>
                     <v-icon size="30px">mdi-plus</v-icon>
                </v-btn>
            </router-link>
            <router-link to="/communityView" style="text-decoration-line: none; padding-top:3px;"> 
                <v-btn value="커뮤니티">커뮤니티<br/>
                    <v-icon size="30px">mdi-message</v-icon>
                </v-btn>
            </router-link>
            <router-link to="/detailView" style="text-decoration-line: none;">
                <v-btn value="상세정보">상세정보<br/>
                    <v-icon size="30px">mdi-account</v-icon>
                </v-btn>
            </router-link>
            </v-bottom-navigation>
        </div>
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
        meal:['50-100kcal','100-200kcal','200-300kcal','300-400kcal','400-500kcal','500-600kcal']
      }),
    }
</script>
<style scoped>
  button{
    width:110px;
    height: 200px;
    margin-right:4px;
    margin-bottom:5px;
  }
  component{
    text-align: center;
    width:20%;
  }
  .footer{
    margin-top : 380px;
  }
</style>