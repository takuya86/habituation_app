<template>
  <v-app>
    <v-content>
      <Nuxt />
    </v-content>
  </v-app>
</template>

<script>
import Header from '/layouts/Header'
export default {
  components: {
    Header,
  },
}
</script>
