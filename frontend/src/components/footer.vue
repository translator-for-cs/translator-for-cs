<template>
  <v-footer app padless inset>
    <v-card flat tile class="primary white--text text-center" width="100%">
      <v-card-text>
        <v-btn
          v-for="link in links"
          :key="link.icon"
          class="mx-4 white--text"
          :href="link.url"
          target="_blank"
          icon
        >
          <v-icon size="36px">{{ link.icon }}</v-icon>
        </v-btn>
      </v-card-text>

      <v-card-text class="white--text pt-0"></v-card-text>

      <v-divider></v-divider>

      <v-card-text class="white--text">
        2020 —
        <strong>Translator for Computer Science and Engineering, Bachelors thesis</strong>
      </v-card-text>
    </v-card>
  </v-footer>
</template>

<script>
export default {
  name: "cse-footer",
  data: () => ({
    visible: false,
    message: "",
    links: [
      {
        url: "https://github.com",
        icon: "mdi-github"
      }
    ]
  })
};
</script>

<style lang="scss" scoped>
</style>
