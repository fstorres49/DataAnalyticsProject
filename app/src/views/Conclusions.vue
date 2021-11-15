<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-buttons slot="start">
          <ion-menu-button></ion-menu-button>
        </ion-buttons>
        <ion-title class="ion-text-center">{{ conclusionsTitle }}</ion-title>
        <ion-buttons slot="end">
          <ion-icon
            class="conclusions-icon-margin-size"
            href="https://www.github.com/fstorres49/DataAnalyticsProject/"
            target="_blank"
            :icon="logoGithub"
          >
          </ion-icon>
        </ion-buttons>
      </ion-toolbar>
    </ion-header>

    <ion-content>
      <div class="hv-tableau-visualization">
        <iframe
          frameborder="0"
          style="border: 0"
          src="https://public.tableau.com/views/Avg_SalarybyCounty2021Estimate/Dashboard1?:showVizHome=no&:embed=true"
          width="1176"
          height="1000"
        ></iframe>
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
</style>