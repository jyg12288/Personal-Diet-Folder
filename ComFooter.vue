<template>
  <div id="footer">
    <footer id="footer">
      <ul class="nav">
        <li><a href="javascript:;">홈</a></li>
        <li><a href="javascript:;">추천</a></li>
        <li><a href="javascript:;"></a></li>
        <li><a href="javascript:;">커뮤니티</a></li>
        <li><a href="javascript:;">상세정보</a></li>
      </ul>
    </footer>
  </div>
</template>

<script>
export default {
  name: "Footer",
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
