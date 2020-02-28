class Toaster {
  constructor() {
    this.target = () => { };
  }
  toast(msg) {
    this.target(msg);
  }
  bind(fn) {
    this.target = fn;
  }
}

export default new Toaster();

/*{
  install: (Vue) => {
    Vue.prototype.$toaster = new Toaster();
    Vue.prototype.$toast = Vue.prototype.$toaster.toast;
  },
};
*/