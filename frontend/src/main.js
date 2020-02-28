import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import vuetify from "./plugins/vuetify";
import toaster from "./plugins/toaster.js";
import axios from "axios";

Vue.config.productionTip = false;
const context = require.context("./components", true, /\.vue$/);
const components = context.keys().map(context);

const Components = {};
Components.install = function install(Vue) {
  components.forEach(c => {
    Vue.component(c.default.name, c.default);
  });
};
Vue.use(Components);

const env = {
  API_URL: "http://localhost:8081/"
};

Vue.prototype.$api = axios.create({
  baseURL: env.API_URL,
  timeout: 10000
});

Vue.prototype.$date = import("date-fns");
Vue.prototype.env = env;
Vue.prototype.$toaster = toaster;

new Vue({
  router,
  store,
  vuetify,
  render: h => h(App)
}).$mount("#app");
