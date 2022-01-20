<template>
  <v-app-bar app dark>
    <appLogo />
    <v-toolbar-title>
      {{ appName }}
    </v-toolbar-title>
  </v-app-bar>
</template>

<script>
import appLogo from '~/components/ui/appLogo'
export default {
  data({ $config: { appName } }) {
    return {
      appName,
    }
  },
  components: {
    appLogo,
  },
}
</script>
