<template>
  <div>
    <Heads :title="title" />
    <section id="section">
      <div class="post-wrapper">
        <div class="writer-wrapper inner">
          <div class="writer-photo"></div>
          <h4 class="writer-name">코코</h4>
        </div>
        <div class="post-photo"></div>
      </div>
      <div class="reply-wrapper inner">
        <h3 class="reply-title"><span>댓글</span></h3>
      </div>
    </section>
    <Footer />
  </div>
</template>

<script>
import Heads from "../components/header.vue";
import Footer from "../components/ComFooter.vue";

export default {
  name: "communityView",
  data() {
    return {
      title: "커뮤니티",
    };
  },
  components: {
    Heads: Heads,
    Footer: Footer,
  },
};
</script>

<style>
@import url("../assets/css/style.css");
</style>
