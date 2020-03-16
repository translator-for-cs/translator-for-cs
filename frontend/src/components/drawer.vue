<template >
  <v-navigation-drawer app expand-on-hover>
    <!--
    <v-list-item>
      <v-list-item-content>
        <v-list-item-title class="title">CSE Translator</v-list-item-title>
        <v-list-item-subtitle>A translator for Computer Science and Engineering</v-list-item-subtitle>
      </v-list-item-content>
    </v-list-item>
    -->

    <v-divider></v-divider>
    <v-list nav>
      <v-list-item v-for="item in links" :key="item.title" link>
        <v-list-item-icon>
          <v-icon>{{ item.icon }}</v-icon>
        </v-list-item-icon>

        <v-list-item-content>
          <v-list-item-title>{{ item.title }}</v-list-item-title>
        </v-list-item-content>
      </v-list-item>
    </v-list>
  </v-navigation-drawer>
</template>

<script>
export default {
  name: "app-drawer",
  props: {
    open: {
      required: true,
      type: Boolean
    }
  },
  data: () => ({
    links: [
      {
        title: "Translate",
        icon: "translate",
        view: "home"
      },
      {
        title: "Lexicon",
        icon: "search",
        view: "lexicon"
      }
    ]
  })
};
</script>

<style lang="scss">
/*
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
*/
</style>
