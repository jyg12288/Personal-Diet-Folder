<template>
    <v-app>
        <v-container>
            <div style="padding-top:10px;">
                <progress id="progress" value="100" min="0" max="100"></progress>
            </div>
            <div style="text-align: center;padding-top: 150px;">
                <b><p style="font-size: 25px; padding-bottom: 20px;">선호하지 않는 식단이 있나요?</p></b>
                <p style="font-size: 15px; color:gray">
                    선호하지 않은 식단에 관해서 추천을 제외해줍니다.
                </p>
                <input type="button" id="고기" value="고기" v-model="user.not_meat"> <label for="고기" @click="Modify5">고기</label>
                <input type="button" id="달걀 및 동물성 제품" value="달걀 및 동물성 제품" v-model="user.not_egg" > <label for="달걀 및 동물성 제품"  @click="Modify5" style="padding-top:40px;">달걀 및 <br/> 동물성 제품</label>
                <input type="button" id="유제품" value="유제품" v-model="user.not_daily_product" > <label for="유제품"  @click="Modify5">유제품</label>
                <input type="button" id="해산물" value="해산물" v-model="user.not_seafood" > <label for="해산물"  @click="Modify5">해산물</label>
                <input type="button" id="과일" value="과일" v-model="user.not_fruit" > <label for="과일"  @click="Modify5">과일</label>
                <input type="button" id="갑각류" value="갑각류" v-model="user.not_crustacean" > <label for="갑각류"  @click="Modify5">갑각류</label>
            </div>
    

            
            <div style="text-align: center; padding-top: 80px;">
                <router-link to="/sixthView" style="text-decoration:none;">
                    <v-btn
                    style ="background-color: lightgray ; height:50px; width:150px; border-radius:30px; color:white; margin-right:20px" >이전</v-btn>
                </router-link>
                <router-link to="/profileView" style="text-decoration:none;">
                    <button type="button shadow"
                    id ="target_btn"
                    style ="background-color: #5587ED; height:50px; width:150px; border-radius:30px; color:white; box-shadow: #d3d1d1 5px 5px 5px;">완료</button>
                </router-link> 
            </div>
            
        </v-container>
    </v-app>
</template>

<script>
export default {
    data(){
        return{
            user:{
                not_preference:[],
            }
        }
    },
    methods:{
        Modify5:function(){
            this.$http.post('/api/users/Modify5', { 
            user: this.user
        })
        .then((res) => {
            if (res.data.success == true) {
                alert(res.data.message);
            }
            if (res.data.success == false) {
                 alert(res.data.message);
            }
        })
        .catch(function () {
            alert('error')
        })
        // },
        // Modify6:function(){
        //     this.$http.post('/api/users/Modify6', { 
        //     user: this.user
        // })
        // .then((res) => {
        //     if (res.data.success == true) {
        //         alert(res.data.message);
        //     }
        //     if (res.data.success == false) {
        //          alert(res.data.message);
        //     }
        // })
        // .catch(function () {
        //     alert('error')
        // })
        // },
        // Modify7:function(){
        //     this.$http.post('/api/users/Modify7', { 
        //     user: this.user
        // })
        // .then((res) => {
        //     if (res.data.success == true) {
        //         alert(res.data.message);
        //     }
        //     if (res.data.success == false) {
        //          alert(res.data.message);
        //     }
        // })
        // .catch(function () {
        //     alert('error')
        // })
        // },
        // Modify8:function(){
        //     this.$http.post('/api/users/Modify8', { 
        //     user: this.user
        // })
        // .then((res) => {
        //     if (res.data.success == true) {
        //         alert(res.data.message);
        //     }
        //     if (res.data.success == false) {
        //          alert(res.data.message);
        //     }
        // })
        // .catch(function () {
        //     alert('error')
        // })
        // },
        // Modify9:function(){
        //     this.$http.post('/api/users/Modify9', { 
        //     user: this.user
        // })
        // .then((res) => {
        //     if (res.data.success == true) {
        //         alert(res.data.message);
        //     }
        //     if (res.data.success == false) {
        //          alert(res.data.message);
        //     }
        // })
        // .catch(function () {
        //     alert('error')
        // })
        // },
        // Modify10:function(){
        //     this.$http.post('/api/users/Modify10', { 
        //     user: this.user
        // })
        // .then((res) => {
        //     if (res.data.success == true) {
        //         alert(res.data.message);
        //     }
        //     if (res.data.success == false) {
        //          alert(res.data.message);
        //     }
        // })
        // .catch(function () {
        //     alert('error')
        // })
        },
        btnActive:function()  {
            const target = document.getElementById('target_btn');
            target.disabled = false;
        }
    }
}

</script>

<style scoped>
input[type=button]{
    display : none;
}

input[type=button]+label{
    display : inline-block;
    height : 150px;
    width : 140px;
    border : 1px solid #cacaca;
    border-radius : 30px;
    text-align: center;
    font-weight:bold;
    font-size : 18px;
    margin: 20px;
    padding-top : 65px;
    box-shadow: #ccc 5px 5px 5px;
}

input[type=button]+label{
    background-color: #fff;
    color: #333;
}

input[type=button]+label:active{
    background-color: #416fd1;
    color: #fff;
}

#progress{
    appearance: none;
}
#progress::-webkit-progress-bar{
    background-color: #f0f0f0;
    border-radius: 10px;
    box-shadow: inset 3px 3px 10px #ccc;
    width: 365px;
}
#progress::-webkit-progress-value {
    border-radius:10px;
    background: #416fd1;
    background: -webkit-linear-gradient(to right, #93acdd, #3665ca);
    background: linear-gradient(to right, #93acdd, #3665ca);

}

input:focus {
    outline: none;
}
.inputBox{
    margin:auto;
    background-color: rgb(222, 222, 222);
    height: 50px;
    width:300px;
    line-height: 50px;
    border-radius: 30px;
}
.inputBox input{
    border-style: none;
    font-size : 0.9rem;
}

</style>