<template>
  <v-container fluid>
    <v-row align="center" justify="center">
      <v-col cols="12" class="my-8 text-center">
        <h1 class="text-h5 font-weight-bold">ユーザー登録</h1>
      </v-col>
      <v-card flat width="80%" max-width="320" color="transparent">
        <v-text-field
          v-model="user.email"
          label="メールアドレスを入力"
          placeholder="例）example@gmail.com"
          outlined
        />
        <v-text-field
          v-model="user.password"
          label="パスワードを入力"
          placeholder="半角英数字6文字以上必要です"
          outlined
        />
        <v-text-field
          v-model="user.name"
          label="名前"
          placeholder="例）田中 太郎"
          outlined
        />
        <v-btn color="light-green darken-1" class="white--text" @click="signup">
          新規登録する
        </v-btn>
      </v-card>
    </v-row>
  </v-container>
</template>

<script>
export default {
  auth: false,
  data() {
    return {
      user: {
        email: '',
        password: '',
        name: '',
      },
    }
  },
  methods: {
    async signup() {
      try {
        await this.$axios.post('/api/v1/auth', {
          email: this.user.email,
          password: this.user.password,
          name: this.user.name,
        })
        await this.$auth.loginWith('local', {
          data: {
            email: this.user.email,
            password: this.user.password,
          },
        })
      } catch (e) {
        this.error = e.response.data.errors.full_messages
      }
    },
  },
}
</script>
