<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-buttons slot="start">
          <ion-menu-button></ion-menu-button>
        </ion-buttons>
        <ion-title class="ion-text-center">{{ conclusionsTitle }}</ion-title>
        <ion-buttons slot="end">
          <ion-button
            color="dark"
            href="https://www.github.com/fstorres49/DataAnalyticsProject/"
            target="_blank"
          >
            <ion-icon class="ave-icon-margin-size" :icon="logoGithub">
            </ion-icon>
          </ion-button>
        </ion-buttons>
      </ion-toolbar>
    </ion-header>

    <ion-content>

      <div class="cv-width">
        <h1 class="cv-titles-text-padding">Conclusions</h1>
        <p class="cv-titles-text-padding"></p>
        <h1 class="cv-titles-text-padding">Data</h1>
        <p class="cv-titles-text-padding"><br /></p>
      </div>
    </ion-content>
  </ion-page>
</template>

<script>
import { logoGithub } from "ionicons/icons";
import { mapState } from "vuex";
import {
  IonButton,
  IonButtons,
  IonContent,
  IonHeader,
  IonMenuButton,
  IonPage,
  IonTitle,
  IonToolbar,
} from "@ionic/vue";
import { defineComponent } from "vue";
export default defineComponent({
  name: "Conclusions",
  components: {
    IonButtons,
    IonButton,
    IonContent,
    IonHeader,
    IonMenuButton,
    IonPage,
    IonTitle,
    IonToolbar,
  },
  setup() {
    return {
      logoGithub,
    };
  },
  computed: {
    ...mapState("data", ["conclusionsTitle"]),
  },
});
</script>

<style scoped>
.hv-tableau-visualization {
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 15px 0px 0px -11px;
}
.conclusions-icon-margin-size {
  margin: 0px 10px 0px 0px;
  font-size: 24px;
}
.cv-titles-text-padding {
  padding: 0px 15px 0px 15px;
}
@media screen and (min-width: 460px) {
  .cv-width {
    width: 450px;
    margin: auto;
  }
}
@media screen and (min-width: 520px) {
  .cv-width {
    width: 480px;
    margin: auto;
  }
}
@media screen and (min-width: 780px) {
  .cv-width {
    width: 680px;
    margin: auto;
  }
}
</style>