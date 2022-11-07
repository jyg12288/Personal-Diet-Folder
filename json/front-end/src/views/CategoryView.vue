<template>
    <v-app>
    <!-- 상단 -->
    <nav>
    <!-- 툴바 작성 -->
    <v-toolbar elevation="1" app>
        <!-- 툴바 아이콘 -->
        <v-btn icon>
          <router-link to="/RecommendView" style="text-decoration:none;">
        <v-icon>mdi-chevron-left</v-icon>
      </router-link>
        </v-btn>
        <!-- 툴바 타이틀 작성 -->
        <div style="text-align:center; width:80%; color:blue;">칼로리별 카테고리</div>
        </v-toolbar>
    </nav>
    <!-- 메인 -->
    <v-main>
      <v-col style="background-color:#EEEEEE; text-align: center;" >
        <!-- 스크롤 메뉴 -->
        <div class="scrollMenu">
          <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/watermelon 50-100.png" style="margin-left:13px;"></v-img>50-100kcal</v-col></v-btn>
          <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/sandwich100-200.png" style="margin-left:15px;"></v-img>100-200kcal</v-col></v-btn>
          <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/pineapple_과일.png" style="margin-left:15px;"></v-img>200-300kcal</v-col></v-btn>
          <v-btn height="100" elevation="2" style="background-color:#FFFFFF;" ><v-col><v-img max-height="100" max-width="70" src="../assets/pancakes_300-400.png" style="margin-left:15px;"></v-img>300-400kcal</v-col></v-btn>
          <v-btn height="100" elevation="2" style="background-color:#FFFFFF;"><v-col><v-img max-height="100" max-width="70" src="../assets/curry-rice_400-500.png" style="margin-left:15px;"></v-img>400-500kcal</v-col></v-btn>
          <v-btn height="100" elevation="2" style="background-color:#FFFFFF;" ><v-col><v-img max-height="100" max-width="70" src="../assets/bentobox_500-600.png" style="margin-left:15px;"></v-img>500-600kcal</v-col></v-btn>
        </div>
      </v-col>
      <!-- 추천 메뉴 내용 -->
      <h5 style="margin:10px;">전체 메뉴</h5>
      <v-col style="background-color:#EEEEEE;">
        <!-- 추천 음식 1 -->
        <router-link to="/CategoryDetailView" style="text-decoration:none;">
          <v-card class="mx-auto" elevation="2" type=button; style=" margin-bottom:20px;">                
            <v-img height="250" src="https://cdn.vuetifyjs.com/images/cards/cooking.png"></v-img>
            <v-card-title>아침 식사용 단백질 머핀</v-card-title>
            <v-card-subtitle>칼로리</v-card-subtitle>
          </v-card>
        </router-link>
        <!-- 추천 음식 2 -->
        <v-card class="mx-auto" elevation="2" style="type:button; margin-bottom:60px;">                
          <v-img height="250" src="https://cdn.vuetifyjs.com/images/cards/cooking.png"></v-img>
          <v-card-title>아침 식사용 단백질 머핀</v-card-title>
          <v-card-subtitle>칼로리</v-card-subtitle>
       </v-card>
      </v-col>
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
  </style>