<template>
  <v-container fluid>
    <div>
      <h3 class="display-1 font-weight-medium text-center">Translate your Computer Science and Engineering words</h3>
    </div>

    <br />
    <div>
    <v-card>
      <v-card-title>
        <v-toolbar>
          <v-toolbar-title>
            <v-btn text class="ma-1" v-if="toggleLang" disabled >{{ sv }}</v-btn>
            <v-btn text class="ma-1" v-if="!toggleLang" disabled >{{ en }}</v-btn>
            <v-btn icon @click="toggleLang = !toggleLang">
              <v-icon>mdi-arrow-left-right</v-icon>
            </v-btn>
            <v-btn text class="ma-1" v-if="!toggleLang" disabled >{{ sv }}</v-btn>
            <v-btn text class="ma-1" v-if="toggleLang" disabled >{{ en }}</v-btn>
          </v-toolbar-title>
        </v-toolbar>
      </v-card-title>
      <v-card-text>
        <v-row class="start">
          <!-- First textfield -->
          <v-textarea class="ma-2" clearable v-model="value" auto-grow></v-textarea>

          <!-- Vertical divider between textfields -->
          <v-divider vertical />

          <!-- Second textfield -->
          <v-textarea auto-grow class="ma-2" readonly placeholder="Översättning" v-model="value"></v-textarea>
        </v-row>
      </v-card-text>
    </v-card>
    </div>
  </v-container>
</template>

<script>
export default {
  name: "Home",
  data: () => ({
    sv: 'Svenska',
    en: 'Engelska',
    toggleLang: true,
    value: ''
  }),
};
</script>

<style lang="scss" scoped>
</style>
