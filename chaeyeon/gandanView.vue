<template>
<div >
  <v-app>
    <!-- 상단바 -->
    <v-app-bar app fixed>
      <v-app-bar-nav-icon></v-app-bar-nav-icon>
      <v-toolbar-title>식단추가하기(간단)</v-toolbar-title>
      <v-spacer></v-spacer>
        <v-btn color="grey darken-2" dark>추가하기</v-btn>
    </v-app-bar>

    <!-- 본문 -->
    <v-main >
         <!-- 식사 종류 -->
      <div class="type">
        <h3 style="margin:10px">식사 종류</h3>
        <v-sheet
          v-model="model"
          class="mx-auto"
          max-width="100%"
        >
          <v-slide-group
            v-model="model"
            show-arrows
          >
            <v-slide-item
              v-for="n in 7"
              :key="n"
              v-slot="{ active, toggle }"
            >
              <v-btn
                name="meal"
                width="10px"
                :input-value="active"
                active-class="purple white--text"
                depressed
                rounded
                @click="toggle"
              >
                {{ meal[n-1] }}
              </v-btn>
            </v-slide-item>
          </v-slide-group>
        </v-sheet>
      </div>
      <!-- 간단입력버튼 -->
      <div class="input1">
        <router-link to="/gandan" style="text-decoration:none; ">
      <v-btn class="inputbtn" color="grey darken-2" dark>간단 입력</v-btn>
      </router-link>
      <router-link to="/detailfood" style="text-decoration:none; ">
      <v-btn class="inputbtn">상세 입력</v-btn>
      </router-link>
      </div>
      
      <p style="color:red; margin:3%;">간단 입력은 1인분 기준입니다.</p>
      <div class="result">
      </div>
      
      <div>
        <v-card-text
            style="height: 100px; "
            class="text-center"
          >
            <v-btn
              color="primary"
              @click="hidden1 = !hidden1"
              fab
              style="margin-right:20%; "
              large
            >
             밥/죽
            </v-btn>
            <v-btn
              color="primary"
              @click="hidden2 = !hidden2"
              fab
              style="margin-right:20%; "
              large
            >
             면류<br>만두
            </v-btn>
            <v-btn
              color="primary"
              @click="hidden3 = !hidden3"
              fab
              large
            >
             국물요리
            </v-btn>
          </v-card-text>
            <div 
            v-if="hidden1"
            class="text-center"
            style="margin-top::20px; padding-left:5%; background-color: #FAFAFA; ">
              <v-btn
              v-for="n in 2"
              :key="n"
                class="sub_menu"
                color="pink"
                dark
              >
                {{rice[n-1]}}
              </v-btn>
            </div>
             <div 
             class="text-center"
            v-if="hidden2"
            style="padding-left:5%; background-color: #FAFAFA;">
              <v-btn
              v-for="n in 2"
              :key="n"
                class="sub_menu"
                color="pink"
                dark
              >
                {{noodle[n-1]}}
              </v-btn>
            </div>
            <div 
            class="text-center"
            v-if="hidden3"
            style="padding-left:5%; background-color: #FAFAFA;">
              <v-btn
              v-for="n in 2"
              :key="n"
                class="sub_menu"
                color="pink"
                dark
              >
                {{gugmul[n-1]}}
              </v-btn>
            </div>
      </div>
              <div>
        <v-card-text
            style="height: 100px; "
            class="text-center"
          >
            <v-btn
              color="primary"
              @click="hidden4 =  !hidden4"
              fab
              style="margin-right:20%; "
              large
            >
             반찬
            </v-btn>
            <v-btn
              color="primary"
              @click="hidden5 =  !hidden5"
              fab
              style="margin-right:20%; "
              large
            >
             김치<br>젓갈<br>장아찌
            </v-btn>
            <v-btn
              color="primary"
              @click="hidden6 = !hidden6"
              fab
              large
            >
             샐러드<br>수프
            </v-btn>
          </v-card-text>
          <div 
          class="text-center"
            v-if="hidden4"
            style="padding-left:5%; background-color: #FAFAFA;">
              <v-btn
              v-for="n in 8"
              :key="n"
                class="sub_menu"
                color="pink"
                dark
              >
                {{banchan[n-1]}}
              </v-btn>
            </div>
            <div 
            class="text-center"
            v-if="hidden5"
            style="padding-left:5%; background-color: #FAFAFA;">
              <v-btn
              v-for="n in 4"
              :key="n"
                class="sub_menu"
                color="pink"
                dark
              >
                {{kimchi[n-1]}}
              </v-btn>
            </div>
            <div 
            class="text-center"
            v-if="hidden6"
            style="padding-left:5%; background-color: #FAFAFA;">
              <v-btn
              v-for="n in 2"
              :key="n"
                class="sub_menu"
                color="pink"
                dark
              >
                {{salad[n-1]}}
              </v-btn>
            </div>
      </div>

            <div>
        <v-card-text
            style="height: 100px; margin-bottom: 10px;"
            class="text-center"
          >
            <v-btn
              color="primary"
              @click="hidden7 =  !hidden7"
              fab
              style="margin-right:20%; "
              large
            >
             양식
            </v-btn>
            <v-btn
              color="primary"
              @click="hidden8 =  !hidden8"
              fab
              style="margin-right:20%; "
              large
            >
             디저트
            </v-btn>
            <v-btn
              color="primary"
              @click="hidden9 =  !hidden9"
              fab
              large
            >
             음료<br>빙과<br>유제품
            </v-btn>
          </v-card-text>
          <div 
          class="text-center"
            v-if="hidden7"
            style="padding-left:5%; margin-bottom:10%;background-color: #FAFAFA;">
              <v-btn
              v-for="n in 3"
              :key="n"
                class="sub_menu"
                color="pink"
                dark
              >
                {{western[n-1]}}
              </v-btn>
            </div>
            <div 
            class="text-center"
            v-if="hidden8"
            style="padding-left:5%; margin-bottom:30%;background-color: #FAFAFA;">
              <v-btn
              v-for="n in 5"
              :key="n"
                class="sub_menu"
                color="pink"
                dark
              >
                {{dessert[n-1]}}
              </v-btn>
            </div>
            <div 
            class="text-center"
            v-if="hidden9"
            style="padding-left:5%; padding-bottom:5%;margin-bottom:10%;background-color: #FAFAFA;">
              <v-btn
              v-for="n in 3"
              :key="n"
                class="sub_menu"
                color="pink"
                dark
              >
                {{juice[n-1]}}
              </v-btn>
            </div>
            <br/>
      </div>
    </v-main>

<!-- <v-footer color="amber" dark fixed>
    하단바
  <v-bottom-navigation  
    absolute 
    dark
    v-model="recent" 
    background-color="amber" >
    <v-btn value="홈">
      홈
      <v-icon>mdi-home</v-icon>
    </v-btn>
    <v-btn value="커뮤니티">
      커뮤니티
      <v-icon>mdi-message</v-icon>
    </v-btn>
    <v-btn value="식단">
      식단
      <v-icon>mdi-silverware</v-icon>
    </v-btn>
    <v-btn value="건강">
        건강
        <v-icon>mdi-heart</v-icon>
      </v-btn>
      <v-btn value="프로필">
        프로필
        <v-icon>mdi-account</v-icon>
      </v-btn>
  </v-bottom-navigation>
  </v-footer> -->
  </v-app>
  </div>
</template>

<script>


 export default {
    data () {
      return {
        model:null,
        recent:'recent',
        hidden1:false,
        hidden2:false,
        hidden3:false,
        hidden4:false,
        hidden5:false,
        hidden6:false,
        hidden7:false,
        hidden8:false,
        hidden9:false,
        meal:['아침','아점','점심','점저','저녁','야식','간식'],
        rice:['밥','죽'],
        noodle:['면류','만두'],
        gugmul:['국/탕','찌개/전골'],
        banchan:['구이','조림','볶음','무침','튀김','부침','찜','냉채'],
        kimchi:['김치','젓갈','장아찌','피클'],
        salad:['샐러드','수프'],
        western:['피자','스파게티','스테이크'],
        dessert:['떡','과자','빵','샌드위치/토스트','초콜릿'],
        juice:['음료','빙과','유제품']
      }
    }
  }
</script>
<style>
.type{
  margin-top:10px;
  margin-bottom:15px;
}
.input1{
  text-align: center;
}
.inputbtn{
  width:40%;
  margin:2%;
}
.result{
  margin-top:2%;
  background-color: darkgray;
  width:500px;
  height:130px;
  margin: auto;
}
.sub_menu{
  margin:5% 7%;
  margin-bottom: 5%;
}
</style>