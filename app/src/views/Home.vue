<template>
  <ion-page>
    <ion-header :translucent="true">
      <ion-toolbar>
        <ion-title>{{ title }}</ion-title>
      </ion-toolbar>
    </ion-header>

    <ion-content :fullscreen="true">
      <!-- <ion-header collapse="condense">
        <ion-toolbar>
          <ion-title size="large">Blank</ion-title>
        </ion-toolbar>
      </ion-header> -->
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
import { mapState } from "vuex";
import {
  IonContent,
  IonHeader,
  IonPage,
  IonTitle,
  IonToolbar,
} from "@ionic/vue";
import { defineComponent } from "vue";
export default defineComponent({
  name: "Home",
  components: {
    IonContent,
    IonHeader,
    IonPage,
    IonTitle,
    IonToolbar,
  },
  computed: {
    ...mapState("data", ["title"]),
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
</style>