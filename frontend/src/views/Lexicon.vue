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
                <div class="editor" contenteditable ref="editor" @input="onKeydown">
                  <!--
                  <span
                    @input="onKeydown"
                    v-for="(word, index) in inputWords"
                    :key="index"
                    :class="{highlight: highlight === index}"
                    @mouseenter="highlight = index"
                    @mouseleave="highlight = -1"
                  >{{word}}&nbsp;</span>
                  -->
                </div>
              </v-col>

              <v-col md="6">
                <div
                  class="editor"
                  :class="{'grey--text': this.translation === ''}"
                  ref="translationTarget"
                >
                  <span
                    v-for="(word, index) in outputWords"
                    :key="index"
                    :class="{highlight: highlight === index}"
                  >{{word}}&nbsp;</span>
                </div>
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
            <v-btn color="primary" text @click="translate">Translate</v-btn>
            <v-tooltip top>
              <template v-slot:activator="{ on }">
                <v-btn color="primary" text v-on="on" @click="toggleLanguage">
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
    translation: "",
    lastInput: 0,
    inputWords: [],
    outputWords: [],
    highlight: -1
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
    toggleLanguage() {
      this.toggleLang = !this.toggleLang;
      const temp = this.inputWords;
      this.inputWords = this.outputWords;
      this.outputWords = temp;
    },
    onKeydown() {
      this.value = this.$refs.editor.textContent;
      /*
      this.translation = Array.from(this.$refs.editor.childNodes)
        .map(e => e.textContent)
        .join("\n");
        */
      //this.translate();
    },
    copyTranslation() {
      window.navigator.clipboard.writeText(this.translation);
    },
    async translate() {
      const editor = this.$refs.editor;
      const { data } = await this.$api.get(
        `/lexicon/${this.langLeft.substring(0, 3).toLowerCase()}?query=${
          this.value
        }`
      );
      console.log(data);

      editor.textContent = "";

      this.outputWords = data.map(({ word, translation }) =>
        translation === "" ? word : translation
      );

      this.inputWords = data
        .map(({ word }) => word)
        .reduce((html, s) => `${html}<span>${s} </span>`, "");

      editor.innerHTML = this.inputWords;

      /*
      this is a web page
      const range = document.createRange();
      const sel = window.getSelection();
      const lastRow = editor.childNodes[editor.childNodes.length - 1];
      range.setStart(lastRow, lastRow.textContent.length - 1);
      range.collapse(true);
      sel.removeAllRanges();
      sel.addRange(range);
      */
    }
  }
};
</script>

<style lang="scss" scoped>
.highlight {
  background: #faf;
}
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
