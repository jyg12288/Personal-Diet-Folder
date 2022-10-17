<template>
    <v-app>
        <div class="header">
            <div class="date">
                <b><p> 금 16일</p></b>
            </div>
            <v-icon size="35px">mdi-calendar-blank</v-icon>
        </div>


        <div class="main">
            <div class="font">
                <b>요약</b>
            </div>
            <div class="chart">
                <div>
                <vue-ellipse-progress
                :progress="tasksDonePercent"
                :determinate="determinate"
                color="#41AF39"
                empty-color="grey"
                :size="150"
                :thickness="5"
                :empty-thickness="3"
                lineMode="out-over"
                :legend-value="tasksDone"
                animation="loop 700 1000"
                fontSize="1.5rem"
                font-color="#41AF39"
                dash="5"
                dot="7 green"
                :loading="loading"
                :no-data="noData"
                >
                    <span slot="legend-value"> / 1470</span>
                    <span slot="legend-caption">칼로리</span>
                </vue-ellipse-progress>
                </div>
                <div class="linear">
                    <b><p style="font-size: 13px;">탄수화물</p></b>
                    <v-progress-linear style="height:7px;" 
                    rounded 
                    background-color="white"
                    color="green lighten-1" 
                    value="15"/>
                    <p style="font-size: 13px; margin-top:10px; color:gray">0/234</p>
                </div>
                <div class="linear">
                    <b><p style="font-size: 13px;">단백질</p></b>
                    <v-progress-linear style="height:7px;" 
                    rounded 
                    background-color="white"
                    color="blue lighten-1" 
                    value="15"/>
                    <p style="font-size: 13px; margin-top:10px; color:gray">0/234</p>
                </div>
                <div class="linear">
                    <b><p style="font-size: 13px;">지방</p></b>
                    <v-progress-linear style="height:7px;" 
                    rounded 
                    background-color="white"
                    color="amber lighten-1" 
                    value="15"/>
                    <p style="font-size: 13px; margin-top:10px; color:gray">0/234</p>
                </div>
            </div>
        </div>
        <div class="main2">
            <div class="font2">
                <b>식단 확인하기</b>
            </div>
            <router-link to="/detailMenu">
                <p style="color:#2478FF; display:inline-block; font-size: 13px;">상세 정보</p>
            </router-link>
            
            <div class="block">
                <div class="menu">
                    <b><p style="font-size:15px; width:350px; display:inline-block; color:gray; margin-left: 15px;">아침</p></b>
                    <img src="../../picture/next.png" style="height:20px; width:20px; "/>
                    <div class="hr2"></div>
                    <div class="img">
                        <img src="../../picture/냉장고.png" style="width:100px; height: 100px;"/>
                    </div>
                    <div class="menu_comment">
                        <p style="height:23px;">사과</p>
                        <p style="height:23px;">사과</p>
                        <p style="height:6px;">사과</p>
                    </div>
                </div>
                <div class="menu">
                    <b><p style="font-size:15px; width:350px; display:inline-block; color:gray; margin-left: 15px;">점심</p></b>
                    <img src="../../picture/next.png" style="height:20px; width:20px; "/>
                    <div class="hr2"></div>
                    <div class="img">
                        <img src="../../picture/냉장고.png" style="width:100px; height: 100px;"/>
                    </div>
                    <div class="menu_comment">
                        <p style="height:23px;">사과</p>
                        <p style="height:23px;">사과</p>
                        <p style="height:6px;">사과</p>
                    </div>
                </div>
                <div class="menu">
                    <b><p style="font-size:15px; width:350px; display:inline-block; color:gray; margin-left: 15px;">저녁</p></b>
                    <img src="../../picture/next.png" style="height:20px; width:20px; "/>
                    <div class="hr2"></div>
                    <div class="img">
                        <img src="../../picture/냉장고.png" style="width:100px; height: 100px;"/>
                    </div>
                    <div class="menu_comment">
                        <p style="height:23px;">사과</p>
                        <p style="height:23px;">사과</p>
                        <p style="height:6px;">사과</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <v-bottom-navigation
            color="blue"
            grow
            absolute>
                <v-btn value="홈">홈<br/>
                    <v-icon size="30px">mdi-home</v-icon>
                </v-btn>
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

<script>
export default {
    name : "app",
    data : () => ({
        tasksDone : 1080,
    }),
    computed: {
    tasksDonePercent() {
      return (this.tasksDone * 100) / 1470;
    },
    component() {
      return this.test ? "vue-ellipse-progress-test" : "vue-ellipse-progress";
    },  
    },
};
</script>

<style scoped>
.header{
    margin-top : 20px;
    margin-left : 15px;
}
.date{
    background-color: #5ca4f8;
    border-radius: 30px;
    text-align: center;
    width: 80px;
    height: 40px;
    padding-top: 8px;
    display : inline-block;
    margin-right: 275px;
    color : white;
    box-shadow: #ccc 2px 2px 2px;
}
.hr{
    margin-top : 10px;
    background-color: rgb(236, 236, 236);
    height: 8px;
}
.hr2{
    background-color: white;
    height: 3px;
    margin-bottom: 15px;
}
.main{
    height: 400px;
}
.font{
    margin-top : 30px;
    margin-left : 20px;
    font-size: 17px;
}
.font2{
    margin-top : 30px;
    margin-left : 20px;
    margin-right: 220px;
    font-size: 17px;
    display: inline-block;
}
.chart{
    margin-top:20px;
    margin-left : 10px;
    margin-right: 10px;
    padding-top : 20px;
    padding-bottom : 10px;
    background-color: rgb(237, 237, 237);
    border-radius: 20px;
    text-align: center;
}
.linear{
    padding-top : 30px;
    width : 120px;
    text-align: center;
    display: inline-block;
    margin:5px;
}
.main2{
    height: 100px;
}
.block{
    height: 400px;
}
.menu{
    margin-top:10px;
    margin-left : 10px;
    margin-right: 10px;
    padding-top : 20px;
    padding-bottom : 10px;
    background-color: rgb(237, 237, 237);
    border-radius: 20px;
}
.img{
    display: inline-block;
    width:100px;
    height: 100px;
    margin-left:10px;
}
.menu_comment{
    display: inline-block;
    margin-left: 40px;
    font-size: 12px;
}

.footer{
    margin-top : 680px;
}
</style>