<template>
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
</template>

<script>
export default {
  name: "FooterView",
  data() {
    return {};
  },
  components: {},
};
</script>

<style>
#footer {
  position: fixed;
  bottom: 0;
  width: 100%;
  background-color: rgb(224, 224, 224);
  padding-top: 10px;
  padding-bottom: 10px;
}

#footer .nav {
  overflow: hidden;
}

#footer .nav > li {
  float: left;
  width: 20%;
}

#footer .nav > li > a {
  display: block;
  padding-top: 30px;
  background-repeat: no-repeat;
  background-size: 30px auto;
  background-position: center top;
  text-align: center;
  font-size: 14px;
}

#footer .nav > li:nth-child(1) > a {
  background-image: url("../assets/img/home.png");
}

#footer .nav > li:nth-child(2) > a {
  background-image: url("../assets/img/best.png");
}

#footer .nav > li:nth-child(3) > a {
  background-image: url("../assets/img/add.png");
  height: 14px;
  background-size: auto 44px;
}

#footer .nav > li:nth-child(4) > a {
  background-image: url("../assets/img/community.png");
}

#footer .nav > li:nth-child(5) > a {
  background-image: url("../assets/img/user.png");
}
</style>
