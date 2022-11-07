<template>    
  <v-app>
    <div class="header"  >
        <router-link to="/MainView">
            <img style="height:30px; width:30px; display:inline-block; margin-left: 20px; margin-right:60px; margin-top: 10px;" src="../../picture/left-arrow.png">
        </router-link>
        <div class="date1">
            <b><p>월 데이터 확인</p></b>
        </div>
    </div>
    <div class="hr"></div>
    <div class="calendar">
      <v-row class="fill-height">
      <v-col>
        <v-sheet height="64">
          <v-toolbar
            flat
          >
            <v-btn
              outlined
              class="mr-4"
              color="grey darken-2"
              @click="setToday"
            >
              Today
            </v-btn>
            <v-btn
              fab
              text
              small
              color="grey darken-2"
              @click="prev"
            >
              <v-icon small>
                mdi-chevron-left
              </v-icon>
            </v-btn>
            <v-btn
              fab
              text
              small
              color="grey darken-2"
              @click="next"
            >
              <v-icon small>
                mdi-chevron-right
              </v-icon>
            </v-btn>
            <v-toolbar-title v-if="$refs.calendar">
              {{ $refs.calendar.title }}
            </v-toolbar-title>
            <v-spacer></v-spacer>
            <v-menu
              bottom
              right
            >
              <template v-slot:activator="{ on, attrs }">
                <v-btn
                  outlined
                  color="grey darken-2"
                  v-bind="attrs"
                  v-on="on"
                >
                  <span>{{ typeToLabel[type] }}</span>
                  <v-icon right>
                    mdi-menu-down
                  </v-icon>
                </v-btn>
              </template>
              <v-list>
                <v-list-item @click="type = 'day'">
                  <v-list-item-title>Day</v-list-item-title>
                </v-list-item>
                <v-list-item @click="type = 'week'">
                  <v-list-item-title>Week</v-list-item-title>
                </v-list-item>
                <v-list-item @click="type = 'month'">
                  <v-list-item-title>Month</v-list-item-title>
                </v-list-item>
                <v-list-item @click="type = '4day'">
                  <v-list-item-title>4 days</v-list-item-title>
                </v-list-item>
              </v-list>
            </v-menu>
          </v-toolbar>
        </v-sheet>
        <v-sheet height="600">
          <v-calendar
            ref="calendar"
            v-model="focus"
            color="primary"
            :events="events"
            :event-color="getEventColor"
            :type="type"
            @click:event="showEvent"
            @click:more="viewDay"
            @click:date="viewDay"
            @change="updateRange"
          ></v-calendar>
          <v-menu
            v-model="selectedOpen"
            :close-on-content-click="false"
            :activator="selectedElement"
            offset-x
          >
            <v-card
              color="grey lighten-4"
              min-width="350px"
              flat
            >
              <v-toolbar
                :color="selectedEvent.color"
                dark
              >
                <v-btn icon>
                  <v-icon>mdi-pencil</v-icon>
                </v-btn>
                <v-toolbar-title v-html="selectedEvent.name"></v-toolbar-title>
                <v-spacer></v-spacer>
                <v-btn icon>
                  <v-icon>mdi-heart</v-icon>
                </v-btn>
                <v-btn icon>
                  <v-icon>mdi-dots-vertical</v-icon>
                </v-btn>
              </v-toolbar>
              <v-card-text>
                <span v-html="selectedEvent.details"></span>
              </v-card-text>
              <v-card-actions>
                <v-btn
                  text
                  color="secondary"
                  @click="selectedOpen = false"
                >
                  Cancel
                </v-btn>
              </v-card-actions>
            </v-card>
          </v-menu>
        </v-sheet>
      </v-col>
    </v-row>
    </div>


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

  </v-app>
</template>

<script>


export default {
  data: () => ({
    focus: '',
    type: 'month',
    typeToLabel: {
      month: 'Month',
      week: 'Week',
      day: 'Day',
      '4day': '4 Days',
    },
    selectedEvent: {},
    selectedElement: null,
    selectedOpen: false,
    events: [],
    colors: ['blue', 'indigo', 'deep-purple', 'cyan', 'green', 'orange', 'grey darken-1'],
    names: ['Meeting', 'Holiday', 'PTO', 'Travel', 'Event', 'Birthday', 'Conference', 'Party'],
  }),
  mounted () {
    this.$refs.calendar.checkChange()
  },
  methods: {
    viewDay ({ date }) {
      this.focus = date
      this.type = 'day'
    },
    getEventColor (event) {
      return event.color
    },
    setToday () {
      this.focus = ''
    },
    prev () {
      this.$refs.calendar.prev()
    },
    next () {
      this.$refs.calendar.next()
    },
    showEvent ({ nativeEvent, event }) {
      const open = () => {
        this.selectedEvent = event
        this.selectedElement = nativeEvent.target
        requestAnimationFrame(() => requestAnimationFrame(() => this.selectedOpen = true))
      }

      if (this.selectedOpen) {
        this.selectedOpen = false
        requestAnimationFrame(() => requestAnimationFrame(() => open()))
      } else {
        open()
      }

      nativeEvent.stopPropagation()
    },
    updateRange ({ start, end }) {
      const events = []

      const min = new Date(`${start.date}T00:00:00`)
      const max = new Date(`${end.date}T23:59:59`)
      const days = (max.getTime() - min.getTime()) / 86400000
      const eventCount = this.rnd(days, days + 20)

      for (let i = 0; i < eventCount; i++) {
        const allDay = this.rnd(0, 3) === 0
        const firstTimestamp = this.rnd(min.getTime(), max.getTime())
        const first = new Date(firstTimestamp - (firstTimestamp % 900000))
        const secondTimestamp = this.rnd(2, allDay ? 288 : 8) * 900000
        const second = new Date(first.getTime() + secondTimestamp)

        events.push({
          name: this.names[this.rnd(0, this.names.length - 1)],
          start: first,
          end: second,
          color: this.colors[this.rnd(0, this.colors.length - 1)],
          timed: !allDay,
        })
      }

      this.events = events
    },
    rnd (a, b) {
      return Math.floor((b - a + 1) * Math.random()) + a
    },
  },
 
};
</script>

<style>
@import url("../assets/css/style.css");
.calendar{
  padding : 10px;
  height: 500px;
}
.date_picker{
  height : 400px;
}

.header{
    margin-top : 20px;
    display : flex;
    align-items: center;
}
.date1{
    display:inline-block; 
    text-align:center; 
    height:30px; 
    width:200px;  
    color:#3665ca; 
    font-size : 20px;
}

.hr{
  height: 1px;
  background-color: #c1c1c1;
  margin-top : 10px;
  margin-bottom: 10px;
}
</style>
