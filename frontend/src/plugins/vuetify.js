import Vue from "vue";
import Vuetify from "vuetify/lib";

Vue.use(Vuetify);


export default new Vuetify({
  icons: {
    iconfont: 'mdi',
  },
  theme: {
    themes: {
      light: {
        primary: "#87b05c",
        secondary: "#D81B60",
        accent: '#82B1FF',
        error: '#FF5252',
        info: '#2196F3',
        success: '#4CAF50',
        warning: '#FFC107',
      },
    },
  },
});
