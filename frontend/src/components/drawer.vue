<template >
  <v-navigation-drawer permanent app dark>
    <div class="drawer-title text-center">
      <router-link class="drawer-title display-2" :to="{ name: 'home' }">Translator</router-link>
    </div>

    <v-divider></v-divider>

    <v-list nav dark class="text-left">
      <v-list-item link :to="{ name: 'home' }" exact-active-class="drawer-active">
        <v-list-item-icon>
          <v-icon>home</v-icon>
        </v-list-item-icon>
        <v-list-item-content>
          <v-list-item-title class="body-2 font-weight-light">Home</v-list-item-title>
        </v-list-item-content>
      </v-list-item>
    </v-list>
  </v-navigation-drawer>
</template>

<script>
export default {
  name: "app-drawer",
  data: () => ({
    show: false
  })
};
</script>

<style lang="scss">
.v-navigation-drawer {
  background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
    url("../assets/sidebar.jpg");
  background-position: center center;
  background-size: cover;
  background-repeat: no-repeat;
  .drawer-title {
    padding: 12px 0px;
  }

  .v-list {
    font-weight: 200;
    padding: 28px;
    .v-list-item--active::before {
      opacity: 0;
    }
    .v-list-item__icon {
      margin-right: 8px;
    }
    .drawer-active {
      border-radius: 4px !important;
      color: #fff;
      background: var(--primary-color);
    }

    .drawer-group-active {
      border-radius: 4px !important;
      color: #fff;
      background: rgba(255, 255, 255, 0.1);
    }
  }
}
</style>
