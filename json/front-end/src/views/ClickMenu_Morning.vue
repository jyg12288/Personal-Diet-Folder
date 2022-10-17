<template>
    <v-app>
        <div style="padding-top : 15px;" >
            <router-link to="/MainView">
                <img style="height:25px; width:25px; display:inline-block; margin-left: 20px; margin-right:70px; margin-top: 10px;" src="../../picture/left-arrow.png">
            </router-link>
            <div style="display:inline-block; text-align:center; height:30px; width:200px;  color:#3665ca; font-size : 20px; ">
                <b><p>아침</p></b>
            </div>
        </div>

        <div class="img"></div>

        <div class="comment">
            <div class="font1"> <b><p style="color:black">칼로리</p></b> 0000Kcal</div>
            <div class="font1"> <b><p style="color:black">탄수화물</p></b> 00.00g </div>
            <div class="font1"> <b><p style="color:black">단백질</p></b> 00.00g</div>
            <div class="font1"> <b><p style="color:black">지방</p></b> 00.00g </div>
        </div>

        <div class="meals">
            <div class="font2"> <b>사과</b> </div>
            <div class="font2" style="text-align:right;"> 0000Kcal </div>
            <div class="font3"> 1개 </div>

            <div class="font2"> <b>사과</b> </div>
            <div class="font2" style="text-align:right;"> 0000Kcal </div>
            <div class="font3"> 1개 </div>
            <div class="hr"></div>
        </div>

        <div class="PB">
            <div class="font4"><b>영양성분</b></div>

            <div class="font5"><b>칼로리</b></div>
            <div class="font5" style="text-align:right; color : gray; font-size:14px;"> 0000 / 0000Kcal </div>
            <v-progress-linear 
                class="progress"
                style="height:15px;" 
                rounded 
                background-color="rgb(219, 219, 219)"
                color="green lighten-1" 
                value="15"/>

            <div class="font5"><b>칼로리</b></div>
            <div class="font5" style="text-align:right; color : gray; font-size:14px;"> 0000 / 0000Kcal </div>
            <v-progress-linear 
                class="progress"
                style="height:15px;" 
                rounded 
                background-color="rgb(219, 219, 219)"
                color="green lighten-1" 
                value="15"/>

            <div class="font5"><b>칼로리</b></div>
            <div class="font5" style="text-align:right; color : gray; font-size:14px;"> 0000 / 0000Kcal </div>
            <v-progress-linear 
                class="progress"
                style="height:15px;" 
                rounded 
                background-color="rgb(219, 219, 219)"
                color="green lighten-1" 
                value="15"/>

            <div class="font5"><b>칼로리</b></div>
            <div class="font5" style="text-align:right; color : gray; font-size:14px;"> 0000 / 0000Kcal </div>
            <v-progress-linear 
                class="progress"
                style="height:15px;" 
                rounded 
                background-color="rgb(219, 219, 219)"
                color="green lighten-1" 
                value="15"/>
        </div>

        <div class="btn">
            더 추가하기
        </div>

        <div class="footer">
            <v-bottom-navigation
            color="blue"
            grow
            absolute>
                <router-link to="/" style="text-decoration-line: none;">
                <v-btn value="홈">홈<br/>
                    <v-icon size="30px">mdi-home</v-icon>
                </v-btn>
                </router-link>
                <v-btn value="추천">추천<br/>
                    <v-icon size="30px">mdi-heart</v-icon>
                </v-btn>
                <v-btn value="식단"><br/>
                    <v-icon size="30px">mdi-plus</v-icon>
                </v-btn>
                <v-btn value="커뮤니티">커뮤니티<br/>
                    <v-icon size="30px">mdi-message</v-icon>
                </v-btn>
                <router-link to="/detailView" style="text-decoration-line: none;">
                    <v-btn value="상세정보">상세정보<br/>
                        <v-icon size="30px">mdi-account</v-icon>
                    </v-btn>
                </router-link>
            </v-bottom-navigation>
        </div>
    </v-app>
</template>
<style scoped>
.img{
    height:300px;
    background-color: rgb(219, 219, 219);
    margin-top : 30px;
}
.comment{
    height : 100px;
    padding : 30px 10px 10px 10px;
}

.font1{
    width : 98px;
    text-align : center;
    display : inline-block;
    color : gray;
}
.meals{
    margin : 20px;
    padding : 5px;
}
.font2{
    display : inline-block;
    width : 175px;
    margin-top:10px;
}
.font3{
    color : gray;
    margin-top : 10px;
    margin-bottom: 10px;
}
.hr{
    height:1px;
    background-color: rgb(171, 171, 171);
}
.PB{
    margin : 10px;
    padding : 10px;
}
.font4{
    font-size : 18px;
    margin-bottom : 14px;
}
.progress{
    margin-top : 10px;
    margin-bottom : 20px;
}
.font5{
    display : inline-block;
    width : 185px;
    margin-top:10px;
}
.btn{
    background-color : rgb(219, 219, 219);
    height : 50px;
    width : 250px;
    border-radius : 30px;
    text-align : center;
    margin : auto;
    padding-top : 15px;
    box-shadow: #ccc 2px 2px 2px;
}
.footer{
    margin-top : 90px;
}
</style>