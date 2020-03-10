<template>
  <v-container fluid>
    <div>
      <h3 class="display-1 font-weight-medium text-center">Translate the shit out of your words</h3>
    </div>

    <br />
    <v-card>
      <v-card-title>
        <v-toolbar>
        <v-toolbar-title>
          <v-btn text>Svenska</v-btn>
          <v-icon>mdi-arrow-left-right</v-icon>
          <v-btn text>Engelska</v-btn>
        </v-toolbar-title>
        </v-toolbar>
      </v-card-title>
      <v-card-text>
        <v-row class="start">
      <!-- First textfield -->
      <v-text-field class="ma-2" v-model="translated"></v-text-field>
      <!-- Vertical divider between textfields -->
      <v-divider vertical />

      <!-- Second textfield -->
      <v-textarea auto-grow class="ma-2" readonly placeholder="Översättning"></v-textarea>
    </v-row>
      </v-card-text>
    </v-card>
    <v-btn color="primary" @click="translated = 'he'">Change value</v-btn>
    <v-btn color="primary" @click="doPost">Click me</v-btn>
  </v-container>
</template>

// prefix="en | "

<script>
export default {
  name: "Home",
  data: () => ({
    translated: ''
  }),
  created() {
    translated: ''
  },
  methods: {
    doPost() {
      this.$http
        .post("http://localhost:3000", {query: translated})
        .catch(console.log);
    }
  },
};
</script>

<style lang="scss" scoped>
</style>
