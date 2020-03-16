<template>
  <v-app>
    <v-app-bar app color="primary" dark extended flat>
      <!--<v-app-bar-nav-icon @click="drawer = !drawer" />-->
      <v-toolbar-title>Translator for Computer Science and Engineering</v-toolbar-title>
    </v-app-bar>
    <app-drawer :open="drawer" />

    <v-fade-transition mode="out-in">
      <router-view class="view" :key="$route.fullPath" />
    </v-fade-transition>

    <toaster />
  </v-app>
</template>

<script>
export default {
  name: "App",
  data: () => ({
    drawer: false
  })
};
</script>

<style lang="scss">
@import "./util.scss";

body,
.v-application {
  font-family: "Noto Sans", sans-serif;
  font-size: 14px;
  background: transparent !important;
}
.view {
  margin-top: 256px;
  z-index: 1000000;
}
</style>
