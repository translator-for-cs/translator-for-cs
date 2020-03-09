<template>
  <v-container fluid>
    <v-btn color="primary" @click="doPost">Click me</v-btn>
  </v-container>
</template>

<script>
export default {
  name: "Home",
  data: () => ({}),
  created() {},
  methods: {
    doPost() {
      this.$http
        .post("http://localhost:3000")
        .catch(console.log);
    }
  }
};
</script>

<style lang="scss" scoped>
</style>
