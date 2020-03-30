<template>
  <v-container>
    <v-row justify="center">
      <v-col md="10">
        <v-card style="margin-top: -232px;">
          <v-toolbar flat>
            <!-- Toolbar where you choose language -->
            <v-row justify="space-around">
              <v-col md="6">
                <span class="title grey--text text--darken-1">{{langLeft}}</span>
              </v-col>

              <v-col md="6">
                <span class="title grey--text text--darken-1">{{langRight}}</span>
              </v-col>
            </v-row>
          </v-toolbar>

          <v-divider />

          <v-card-text>
            <v-row class="start">
              <v-col md="6" class="divider-right">
                <div class="editor" ref="editor" contenteditable @input="onKeydown" />
              </v-col>

              <v-col md="6">
                <div
                  class="editor"
                  :class="{'grey--text': this.translation === ''}"
                  v-text="translationText"
                />
                <v-row>
                  <v-spacer />
                  <v-tooltip top>
                    <template v-slot:activator="{ on }">
                      <v-btn color="primary" text v-on="on" @click="copyTranslation">
                        <v-icon>filter_none</v-icon>
                      </v-btn>
                    </template>
                    <span>Copy translation</span>
                  </v-tooltip>
                </v-row>
              </v-col>
            </v-row>
          </v-card-text>
          <v-divider />
          <v-card-actions>
            <v-spacer></v-spacer>
            <v-btn color="primary" text>Translate</v-btn>
            <v-tooltip top>
              <template v-slot:activator="{ on }">
                <v-btn color="primary" text v-on="on" @click="toggleLang = !toggleLang">
                  <v-icon>swap_horiz</v-icon>
                </v-btn>
              </template>
              <span>Switch languages</span>
            </v-tooltip>
          </v-card-actions>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  name: "Home",
  data: () => ({
    lang: {
      sv: "Swedish",
      en: "English"
    },
    toggleLang: true,
    value: "",
    translation: ""
  }),
  computed: {
    langLeft() {
      return this.toggleLang ? this.lang.sv : this.lang.en;
    },
    langRight() {
      return this.toggleLang ? this.lang.en : this.lang.sv;
    },
    translationText() {
      return this.translation !== "" ? this.translation : "Translation";
    }
  },
  methods: {
    onKeydown() {
      this.value = this.$refs.editor.textContent;
      this.translation = Array.from(this.$refs.editor.childNodes)
        .map(e => e.textContent)
        .join("\n");
    },
    copyTranslation() {
      window.navigator.clipboard.writeText(this.translation);
    }
  }
};
</script>

<style lang="scss" scoped>
.editor {
  width: 100%;
  min-height: 200px;
  font-size: 22px;
  white-space: pre-wrap;

  &:focus {
    outline: none;
  }
}
</style>
