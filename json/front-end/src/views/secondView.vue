<template>
    <v-app>
        <v-container>
            <div style="padding-top:10px;">
                <progress id="progress" value="16" min="0" max="100"></progress>
            </div>
            <div style="text-align: center;padding-top: 250px;">
                <b><p style="font-size: 25px; padding-bottom: 20px;">성함을 알려주세요</p></b>
                <div class="inputBox shadow" v-on:keyup.enter="addName">
                    <input type="text" v-model="user.name" placeholder="     성함을 입력해주세요   ">
                </div>
            </div>
            <div style="text-align: center; padding-top: 80px;">
                <router-link to="/inputID" style="text-decoration:none;">
                    <v-btn
                    style ="background-color: lightgray ; height:50px; width:150px; border-radius:30px; color:white; margin-right:20px" >이전</v-btn>
                </router-link>
                <router-link to="/thirdView" style="text-decoration:none;">
                    <button type="button shadow"
                    id ="target_btn"
                    :disabled="user.name.length<1"
                    @click="signUp"
                    style ="background-color: #5587ED; height:50px; width:150px; border-radius:30px; color:white; box-shadow: #d3d1d1 5px 5px 5px;">다음</button>
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
                name:''
            }
        }
    },
    methods:{
        signUp:function(){
            this.$http.post('/api/users/signUp', { 
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
        },
        addName(){
            console.log(this.name);
        }
    }
}

</script>

<style scoped>
#box{
    width:150px;
    height: 150px;
    margin: 20px;
    border-radius: 30px;
    border : 1px solid #d3d1d1;
    box-shadow: #d3d1d1 5px 5px 5px;
}
#box:hover{
    background-color: #5587ED;
    color: white;
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