<template>
  <v-snackbar dark v-model="visible" right top>
    {{ message }}
    <v-btn v-if="false" color="primary" light text @click="$store.dispatch('closeToaster')">Close</v-btn>
  </v-snackbar>
</template>

<script>
export default {
  name: "Toaster",
  data: () => ({
    visible: false,
    message: ""
  }),
  created() {
    this.$toaster.bind(msg => {
      this.message = msg;
      this.visible = true;
    });
  }
};
</script>

<style lang="scss" scoped>
.tag-container {
  a {
    color: #fff;
    text-decoration: none;
    font-weight: 700;
    font-size: 12px;
    display: inline-block;
    border-radius: 3px;
    color: #fff;
    margin: 4px;
    padding: 2px 6px 3px;
    background: #364657;
  }
}
.name {
  font-size: 14px;
  display: inline-block;
  padding-right: 8px;
}
</style>
