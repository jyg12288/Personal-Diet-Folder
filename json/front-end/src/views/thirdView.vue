<template>
    <v-app>
        <v-container>
            <div style="padding-top:10px;">
                <progress id="progress" value="32" min="0" max="100"></progress>
            </div>
            <div style="text-align: center;padding-top: 200px;">
                <b><p style="font-size: 25px; padding-bottom: 20px;">귀하의 성별은 무엇인가요?</p></b>
                <p style="font-size: 15px; color:gray">
                    일일 칼로리 목표를 정확히 계산하려면<br/>
                    성별 정보가 필요합니다.
                </p>
                <input type="radio" id="남성" value="남성" v-model="user.gender" :onclick='btnActive()'> <label for="남성" @click="Modify1">남성</label>
                <input type="radio" id="여성" value="여성" v-model="user.gender" :onclick='btnActive()'> <label for="여성"  @click="Modify1">여성</label>
            </div>

            
            <div style="text-align: center; padding-top: 80px;">
                <router-link to="/secondView" style="text-decoration:none;">
                    <v-btn
                    style ="background-color: lightgray ; height:50px; width:150px; border-radius:30px; color:white; margin-right:20px" >이전</v-btn>
                </router-link>
                <router-link to="/fourthView" style="text-decoration:none;">
                    <button type="button shadow"
                    id ="target_btn"
                    :disabled="true"
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
                gender:'',
            }
        }
    },
    methods:{
        Modify1:function(){
            this.$http.post('/api/users/Modify1', { 
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
        btnActive:function()  {
            const target = document.getElementById('target_btn');
            target.disabled = false;
        }
    }
}

</script>

<style scoped>
input[type=radio]{
    display : none;
}

input[type=radio]+label{
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

input[type=radio]+label{
    background-color: #fff;
    color: #333;
}

input[type=radio]:checked+label{
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