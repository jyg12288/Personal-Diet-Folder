<template>
    <v-app>
        <div class="profile">
            <div v-for="(user, index) in users" class="user-wrap"
            :key="index" >
            <div style="padding-top : 20px;" >
                <router-link to="/">
                    <img style="height:30px; width:30px; display:inline-block; margin-left: 20px; margin-right:130px; margin-top: 10px;" src="../../picture/left-arrow.png">
                </router-link>
                <div style="display:inline-block; text-align:center; height:30px; width:80px;  color:#3665ca; font-size : 23px; ">
                    <b><p>프로필</p></b>
                </div>
            </div>
            <router-link to="/ModifyNameView">
            <div class="imformation">
                <b><p style="font-size:20px; display:inline-block;">이름</p></b>
                <p style="display:inline-block; width : 340px; text-align:right; font-size:18px; color:gray;">{{user.name}} &nbsp;&nbsp;
                    <img src="../../picture/next.png" style="height:18px; width:18px;">
                </p>
                <hr/>
            </div>
            </router-link>

            <router-link to="/ModifyAgeView">
            <div class="imformation">
                <b><p style="font-size:20px; display:inline-block;">나이</p></b>
                <p style="display:inline-block; width : 340px; text-align:right; font-size:18px; color:gray;">{{user.age}} &nbsp;&nbsp;
                    <img src="../../picture/next.png" style="height:18px; width:18px;">
                </p>
                <hr/>
            </div>
            </router-link>

            <router-link to="/ModifyHeightView">
            <div class="imformation">
                <b><p style="font-size:20px; display:inline-block;">키</p></b>
                <p style="display:inline-block; width : 360px; text-align:right; font-size:18px; color:gray;">{{user.height}} &nbsp;&nbsp;
                    <img src="../../picture/next.png" style="height:18px; width:18px;">
                </p>
                <hr/>
            </div>
            </router-link>

            <router-link to="/ModifyWeightView">
            <div class="imformation">
                <b><p style="font-size:20px; display:inline-block;">체중</p></b>
                <p style="display:inline-block; width : 340px; text-align:right; font-size:18px; color:gray;">{{user.weight}} &nbsp;&nbsp;
                    <img src="../../picture/next.png" style="height:18px; width:18px;">
                </p>
                <hr/>
            </div>
            </router-link>

            <router-link to="/ModifyNotPreferenceView">
            <div class="imformation">
                <b><p style="font-size:20px; ">선호하지 않은 식단</p></b>
                <p style="text-align:right; font-size:18px; color:gray;">{{user.not_preference}} &nbsp;&nbsp;
                    <img src="../../picture/next.png" style="height:18px; width:18px;">
                </p>
                <hr/>
            </div>
            </router-link>
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
    data(){
        return{
            users:[]
        }
    },
    created(){
        this.$http.get("/api/users")
            .then((response) => {
                this.users = response.data;
            })
    }
}
</script>
<style scoped>
.footer{
    margin-top : 300px;
}
.imformation{
    padding-top:40px;
    width:380px;
    margin:auto;
}

.v-btn{
    width:90px;
}
</style>