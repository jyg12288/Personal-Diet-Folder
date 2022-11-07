<template>
    <v-app>
        <div class="header"  >
            <router-link to="/MainView">
                <img style="height:30px; width:30px; display:inline-block; margin-left: 20px; margin-right:60px; margin-top: 10px;" src="../../picture/left-arrow.png">
            </router-link>
            <div class="date1">
                <b><p>2022.09.16.금요일</p></b>
            </div>
        </div>

        <router-link to="morningView" style="text-decoration:none; color:black;">
        <div class="meals">
            <div class="meal_name">
                <div class="font1" > <b>아침</b></div>
                <div class="font2" >57kcal</div>
            </div>
            <div class="meal_content">
                <div class="font3"> 사과 </div>
                <div class="font4">1조각</div>
                <div class="font5">57kcal</div>
                <div class="hr"></div>
            </div>
        </div>
        </router-link>

        <div class="meals">
            <div class="meal_name">
                <div class="font1" > <b>점심</b></div>
                <div class="font2" >57kcal</div>
            </div>
            <div class="meal_content">
                <div class="font3"> 사과 </div>
                <div class="font4">1조각</div>
                <div class="font5">57kcal</div>
                <div class="hr"></div>
            </div>
        </div>

        <div class="meals">
            <div class="meal_name">
                <div class="font1" > <b>저녁</b></div>
                <div class="font2" >57kcal</div>
            </div>
            <div class="meal_content">
                <div class="font3"> 사과 </div>
                <div class="font4">1조각</div>
                <div class="font5">57kcal</div>
                <div class="hr"></div>
            </div>
        </div>

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
    
}
</script>

<style scoped>
.header{
    margin-top : 20px;
    display : flex;
    align-items: center;
}
.date1{
    display:inline-block; 
    text-align:center; 
    height:30px; 
    width:200px;  
    color:#3665ca; 
    font-size : 20px;
}
.meals{
    margin : 30px 10px 10px 10px;
}

.meal_name{
    background-color: rgb(217, 217, 217);
    height: 50px;
    text-align: center;
    display : flex;
    align-items: center;
    border-radius: 5px;
}

.font1{
    display: inline-block;
    width:170px;
    text-align: left;
    padding-left : 10px;
    font-size : 17px;

}

.font2{
    display: inline-block;
    width:190px;
    text-align: right;
    color : gray;
}

.meal_content{
    margin : 10px;
}

.font3{
    margin-top : 25px;
}

.font4{
    display : inline-block;
    margin-top : 10px;
    width:170px;
    color : gray;
    font-size : 14px;
}
.font5{
    display : inline-block;
    margin-top : 10px;
    width:170px;
    text-align: right;
    color : gray;
}

.hr{
    height: 1px;
    background-color: rgb(137, 137, 137);
    margin-top : 10px;
}
</style>