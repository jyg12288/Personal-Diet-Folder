import Vue from 'vue'
import App from './App.vue'
import vuetify from './plugins/vuetify'
import {router} from './routes/index.js'
import axios from 'axios'
import VueScrollProgress from "@guillaumebriday/vue-scroll-progress-bar"
import VueEllipseProgress from 'vue-ellipse-progress';


Vue.config.productionTip = false
Vue.prototype.$http = axios;
Vue.use(VueScrollProgress);
Vue.use(VueEllipseProgress);


new Vue({
  vuetify,
  router,
  render: h => h(App)
}).$mount('#app')

