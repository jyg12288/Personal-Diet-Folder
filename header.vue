<template>
  <div>
    <header id="heads">
      <h1>{{ this.title }}</h1>
      <button class="back-btn"></button>
    </header>
  </div>
</template>

<script>
export default {
  name: "heads",
    props : {
      title : String,
    },
  components: {},
};
</script>

<style>
#heads {
  position: fixed;
  width: 100%;
  height: 60px;
  line-height: 60px;
  text-align: center;
  background-color: #fff;
  z-index: 100;
}

#heads h1 {
  font-size: 18px;
  color: rgb(41, 128, 185);
  font-weight: 600;
}

#heads .back-btn {
  position: absolute;
  left: 15px;
  top: 50%;
  transform: translateY(-50%);
  width: 32px;
  height: 32px;
  overflow: hidden;
  background: url("../assets/img/back_btn.png") no-repeat center center;
  background-size: 20px;
}

.inner {
  padding-left: 15px;
  padding-right: 15px;
  box-sizing: border-box;
}
</style>
