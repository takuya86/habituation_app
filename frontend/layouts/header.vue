<template>
  <header>
    <v-app-bar app dark>
      <appLogo />
      <v-toolbar-title>
        {{ appName }}
      </v-toolbar-title>
      <v-spacer />
      <v-btn color="#FFF" plain to="/users/login">ログイン</v-btn>
      <v-btn color="#FFF" plain to="/users/signup">新規登録</v-btn>
      <v-btn color="#FFF" plain>マイページ</v-btn>
      <v-btn rounded color="primary" dark>＋目標追加</v-btn>
    </v-app-bar>
  </header>
</template>

<script>
import appLogo from '~/components/ui/appLogo'
export default {
  components: {
    appLogo,
  },
  data({ $config: { appName } }) {
    return {
      appName,
      drawer: false,
    }
  },
}
</script>
