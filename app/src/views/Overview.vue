<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-buttons slot="start">
          <ion-menu-button></ion-menu-button>
        </ion-buttons>
        <ion-title class="ion-text-center">{{ overviewTitle }}</ion-title>

        <ion-buttons slot="end">
          <ion-icon
            class="overview-icon-margin-size"
            href="https://www.github.com/fstorres49/DataAnalyticsProject/"
            target="_blank"
            :icon="logoGithub"
          >
          </ion-icon>
        </ion-buttons>
      </ion-toolbar>
    </ion-header>

    <ion-content :fullscreen="true">
      <div class="overview-width">
        <h1 class="overview-titles-text-padding">Research Question</h1>
        <p class="overview-titles-text-padding">
          Can an average American buy a house at current prices (by counties)?
        </p>
        <h1 class="overview-titles-text-padding">Visualizations</h1>
        <p class="overview-titles-text-padding">
          To visualize our findings, please click on the top left hamburger menu
          and select the dashboard of your interest.
        </p>
        <h1 class="overview-titles-text-padding">Definitions</h1>
        <p class="overview-titles-text-padding">Average American:</p>
        <h1 class="overview-titles-text-padding">Data</h1>
        <p class="overview-titles-text-padding">
          This project uses data from...
        </p>
      </div>
    </ion-content>
  </ion-page>
</template>

<script>
import { logoGithub } from "ionicons/icons";
import { mapState } from "vuex";
import {
  IonButtons,
  IonContent,
  IonHeader,
  IonIcon,
  IonMenuButton,
  IonPage,
  IonTitle,
  IonToolbar,
} from "@ionic/vue";
import { defineComponent } from "vue";
export default defineComponent({
  name: "Overview",
  components: {
    IonButtons,
    IonContent,
    IonHeader,
    IonIcon,
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
    ...mapState("data", ["overviewTitle"]),
  },
});
</script>

<style scoped>
.overview-icon-margin-size {
  margin: 0px 10px 0px 0px;
  font-size: 24px;
}
.overview-titles-text-padding {
  padding: 0px 0px 0px 15px;
}
@media screen and (min-width: 460px) {
  .overview-width {
    width: 450px;
    margin: auto;
  }
}
@media screen and (min-width: 520px) {
  .overview-width {
    width: 480px;
    margin: auto;
  }
}
@media screen and (min-width: 780px) {
  .overview-width {
    width: 680px;
    margin: auto;
  }
}
</style>