import Vue from 'vue'
import VueRouter from 'vue-router'
import firstView from '../views/firstView.vue'
import secondView from '../views/secondView.vue'
import thirdView from '../views/thirdView.vue'
import fourthView from '../views/fourthView.vue'
import fifthView from '../views/fifthView.vue'
import sixthView from '../views/sixthView.vue'
import seventhView from '../views/seventhView.vue'
import profileView from '../views/profileView.vue'
//import InputID from '../views/idinputView.vue'
import detailView from '../views/detailView.vue'
import ModifyNameView from '../views/modifyNameView.vue'
import ModifyAgeView from '../views/ModifyAgeView.vue'
import ModifyHeightView from '../views/ModifyHeightView.vue'
import ModifyWeightView from '../views/ModifyWeightView.vue'
import ModifyNotPreferenceView from '../views/ModifyNotPreferenceView.vue'
import MainView from '../views/MainView.vue'
import detailMenu from '../views/detailMenu.vue'
import MorningView from '../views/ClickMenu_Morning.vue'

Vue.use(VueRouter)

export const routes = [
  {
    path: '/',
    name: 'first',
    component: firstView
  },
  {
    path:'/secondview',
    name:'second',
    component: secondView
  },
  {
    path:'/thirdview',
    name:'third',
    component: thirdView
  }
  ,
  {
    path:'/fourthview',
    name:'fourth',
    component: fourthView
  } ,
  {
    path:'/fifthView',
    name:'fifth',
    component: fifthView
  },
  {
    path:'/sixthView',
    name:'sixth',
    component: sixthView
  },
  {
    path:'/sevethView',
    name:'seventh',
    component: seventhView
  },
  {
    path:'/profileView',
    name:'profile',
    component: profileView
  },
  {
    path:'/detailView',
    name:'detail',
    component: detailView
  },
  {
    path:'/ModifyNameView',
    name : 'ModifyName',
    component : ModifyNameView
  },
  {
    path:'/ModifyAgeView',
    name : 'ModifyAge',
    component : ModifyAgeView
  },
  {
    path:'/ModifyHeightView',
    name : 'ModifyHeight',
    component : ModifyHeightView
  },
  {
    path:'/ModifyWeightView',
    name : 'ModifyWeight',
    component : ModifyWeightView
  },
  {
    path : '/ModifyNotPreferenceView',
    name : 'MpdifyNotProference',
    component : ModifyNotPreferenceView
  },
  {
    path: '/MainView',
    name : 'Main',
    component : MainView
  },
  {
    path : '/detailMenu',
    name : 'detailM',
    component : detailMenu
  },
  {
    path : '/morningView',
    name : 'morning',
    component : MorningView
  }
]

export const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})