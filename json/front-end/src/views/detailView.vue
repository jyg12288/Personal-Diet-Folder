<template>
    <v-app>
        <div class="profile">
            <div style="padding-top : 20px;" >
                <router-link to="/MainView">
                    <img style="height:30px; width:30px; display:inline-block; margin-left: 20px; margin-right:110px; margin-top: 10px;" src="../../picture/left-arrow.png">
                </router-link>
                <div style="display:inline-block; text-align:center; height:30px; width:100px;  color:#3665ca; font-size : 23px; ">
                    <b><p>상세정보</p></b>
                </div>
            </div>

            <router-link to="profileView" style="text-decoration: none;">
            <div class="imformation">
                <v-icon size="30px" style="margin-right:10px; color:black;">mdi-account</v-icon>
                <p style="display:inline-block; width : 320px;  font-size:18px; text-decoration: none; color:black">프로필</p>
                <img src="../../picture/next.png" style="height:18px; width:18px; text-align:right; ">
                <hr/>
            </div>
            </router-link>
            <div class="imformation">
                <v-icon size="30px" style="margin-right:10px; color:black;">mdi-cog</v-icon>
                <p style="display:inline-block; width : 320px;  font-size:18px;">설정</p>
                <img src="../../picture/next.png" style="height:18px; width:18px; text-align:right; ">
                <hr/>
            </div>
            <div class="imformation">
                <v-icon size="30px" style="margin-right:10px; color:black;">mdi-help-circle</v-icon>
                <p style="display:inline-block; width : 320px;  font-size:18px;">도움말 및 자주 묻는 질문 </p>
                <img src="../../picture/next.png" style="height:18px; width:18px; text-align:right; ">
                <hr/>
            </div>
            <div class="imformation">
                <v-icon size="30px" style="margin-right:10px; color:black;">mdi-phone</v-icon>
                <p style="display:inline-block; width : 320px;  font-size:18px;">고객센터</p>
                <img src="../../picture/next.png" style="height:18px; width:18px; text-align:right; ">
                <hr/>
            </div>
            </div>
        <v-footer>
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
        </v-footer>
    </v-app>
</template>

<script>
export default {
    
}
</script>
<style scoped>
.footer{
    margin-top : 440px;
}
.imformation{
    padding-top:40px;
    width:380px;
    margin:auto;
    text-decoration: none;
}

.v-btn{
    width:90px;
}
</style>