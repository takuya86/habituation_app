import colors from 'vuetify/es5/util/colors'

export default {
  server: {
    host: '0.0.0.0',
  },

  publicRuntimeConfig: {
    appName: process.env.APP_NAME,
  },

  head: {
    titleTemplate: '%s - frontend',
    title: 'frontend',
    htmlAttrs: {
      lang: 'en',
    },
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: '' },
    ],
    link: [{ rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }],
  },

  css: [], // 共通で読み込ませたいCSSプロパティを追加する

  plugins: ['~/plugins/axios.js'],

  components: true,

  buildModules: [],

  modules: [
    '@nuxtjs/axios',
    '@nuxtjs/auth',
    '@nuxtjs/eslint-module',
    '@nuxtjs/vuetify',
  ],

  vuetify: {
    customVariables: ['~/assets/variables.scss'],
    theme: {
      dark: false,
      themes: {
        dark: {
          primary: colors.blue.darken2,
          accent: colors.grey.darken3,
          secondary: colors.amber.darken3,
          info: colors.teal.lighten1,
          warning: colors.amber.base,
          error: colors.deepOrange.accent4,
          success: colors.green.accent3,
        },
      },
    },
  },
  axios: {
    baseURL: 'http://localhost:5000',
  },
  auth: {
    redirect: {
      login: '/users/login',
      logout: '/',
      callback: '/callback',
      home: '/',
    },
    localStorage: false,
    strategies: {
      local: {
        endpoints: {
          login: {
            url: '/api/v1/auth/sign_in',
            method: 'post',
            propertyName: 'access_token',
          },
          logout: { url: '/api/v1/auth/sign_out', method: 'delete' },
          user: false,
        },
      },
    },
  },

  build: {
    extend(config, ctx) {},
  },
}
