<template>    
    <div class="calendar inner" id="calendar"></div>
           
</template>
  
<script>
  
  
  export default {
    mounted() {
      var calendarEl = document.getElementById("calendar");
        // eslint-disable-next-line no-undef, no-unused-vars
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: "dayGridMonth",
        });
        calendar.render();
  
      
     
  
  
    },
    name: "Calender",
    
   
  };
  </script>
  
  <style>
  @import url("./assets/css/style.css");
  </style>
  