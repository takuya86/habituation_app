<template>
  <header>
    <v-app-bar app dark>
      <appLogo />
      <v-toolbar-title>
        {{ appName }}
      </v-toolbar-title>
      <v-spacer />
      <v-app-bar-nav-icon @click="drawer = true"></v-app-bar-nav-icon>
    </v-app-bar>
    <v-navigation-drawer v-model="drawer" fixed temporary right>
      <v-list nav dense>
        <v-list-item-group>
          <v-list-item>
            <v-list-item-title>HOME</v-list-item-title>
          </v-list-item>
          <v-list-item>
            <v-list-item-title>ABOUT</v-list-item-title>
          </v-list-item>
        </v-list-item-group>
      </v-list>
    </v-navigation-drawer>
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
