<template>
    <v-app>
        <v-container>
            <div style="padding-top:10px;">
                <progress id="progress" value="48" min="0" max="100"></progress>
            </div>
            <div style="text-align: center;padding-top: 200px;">
                <b><p style="font-size: 25px; padding-bottom: 20px;">귀하의 나이는 무엇인가요?</p></b>
                <p style="font-size: 15px; color:gray">
                    일일 칼로리 목표를 정확히 계산하려면<br/>
                    나이 정보가 필요합니다.
                </p>
                <div class="inputBox shadow" v-on:keyup.enter="addAge">
                    <input type="text" v-model="user.age" placeholder="     나이 입력해주세요   ">
                </div>
            </div>

            
            <div style="text-align: center; padding-top: 80px;">
                <router-link to="/thirdView" style="text-decoration:none;">
                    <v-btn
                    style ="background-color: lightgray ; height:50px; width:150px; border-radius:30px; color:white; margin-right:20px" >이전</v-btn>
                </router-link>
                <router-link to="/fifthView" style="text-decoration:none;">
                    <button type="button shadow"
                    id ="target_btn"
                    :disabled="user.age.length<1"
                    @click="Modify2"
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
                age:'' ,
            }
        }
    },
    methods:{
        Modify2:function(){
            this.$http.post('/api/users/Modify2', { 
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
    width: 400px;
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