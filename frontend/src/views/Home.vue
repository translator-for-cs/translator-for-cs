<template>
  <v-container fluid>
    <!-- Title on top of page -->
    <div>
      <h3 class="display-1 font-weight-medium text-center">Computer Science and Engineering translator</h3>
    </div>

    <br />
    <!-- Start of translation part -->
    <div>
    <v-card>
      <v-card-title>
        <v-toolbar>

          <!-- Toolbar where you choose language -->
          <v-toolbar-title>
            <!-- Wierd way to switch place on languages on button press (but works)-->
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
        <!-- Textfields -->
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
    
    <br />

    <!-- Button to translate the words -->
    <div id="buttons">
      <v-btn color="primary x-large">Översätt</v-btn>
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
