<template>
  <v-app>
    <main class="view">
      <v-app-bar color="transparent" flat>
        <v-row>
          <v-spacer />
          <v-col md="1"></v-col>
        </v-row>
      </v-app-bar>
      <v-fade-transition mode="out-in">
        <router-view :key="$route.fullPath" />
      </v-fade-transition>   
    </main>

    <toaster />
    <app-drawer />
  </v-app>
</template>

<script>
export default {
  name: "App",
  data: () => ({})
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

.v-app-bar {
  padding: 12px;
}

.view {
  padding: 0 64px;
  margin-left: 256px;
}
</style>
