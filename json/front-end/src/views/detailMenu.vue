<template>
    <v-app>
        <div style="padding-top : 20px;" >
            <router-link to="/MainView">
                <img style="height:30px; width:30px; display:inline-block; margin-left: 20px; margin-right:70px; margin-top: 10px;" src="../../picture/left-arrow.png">
            </router-link>
            <div style="display:inline-block; text-align:center; height:30px; width:200px;  color:#3665ca; font-size : 23px; ">
                <b><p>2022.09.16.금요일</p></b>
            </div>
        </div>

        <div class="meals">

        </div>
    </v-app>
</template>

<script>
export default {
    
}
</script>

<style scoped>
.meals{
    background-color: aliceblue;
    height: 200px;
    margin : 30px 10px 10px 10px;
}

</style>