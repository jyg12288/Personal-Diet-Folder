<template>
    <v-app>
        <div-container style="height:700px; margin:auto">
            <v-img src="../../picture/냉장고.png" height="350px" width="350px" ></v-img>
            <div style="text-align: center;">
                <b><v-p style="font-size: 30px;">무병장수로<br/>
                        건강을 지키세요</v-p>
                </b>
                <br/><br/>
                <p style="font-size: 15px; color:gray">
                    더 건강하고 행복한 삶을 향한 여정을 시작하세요.
                </p>
            </div>
            <router-link to="/secondView" style="text-decoration:none;">
            <div style="text-align: center; padding-top: 100px;">
                <button style="background-color: #5587ED; height:50px; width:300px; border-radius: 30px; color:white">시작하기</button>
            </div>
            </router-link>
        </div-container>
    </v-app>
</template>
