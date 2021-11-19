<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-buttons slot="start">
          <ion-menu-button></ion-menu-button>
        </ion-buttons>
        <ion-title class="ion-text-center">{{
          mortgageAsPercOfSalary
        }}</ion-title>
        <ion-buttons slot="end">
          <ion-button
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
      <div class="hv-tableau-visualization">
        <iframe
          frameborder="0"
          style="border: 0"
          src="https://public.tableau.com/views/Avg_SalarybyCounty2021Estimate/Dashboard1?:showVizHome=no&:embed=true"
          width="1176"
          height="840"
        ></iframe>
      </div>
      <div class="maposat-width">
        <h1 class="maposat-titles-text-padding">
          Mortgage as Percentage of Salary After Taxes:
        </h1>
        <p class="maposat-titles-text-padding"></p>
        <h1 class="maposat-titles-text-padding">Data:</h1>
        <p class="maposat-titles-text-padding">
          1. National Association of Realtors<br />
          2. Bureau of Economic Analysis. U.S. Department of Commerce.
        </p>
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
  IonIcon,
  IonMenuButton,
  IonPage,
  IonTitle,
  IonToolbar,
} from "@ionic/vue";
import { defineComponent } from "vue";
export default defineComponent({
  name: "MortgageAsPercOfSalaryAfterT",
  components: {
    IonButton,
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
    ...mapState("data", ["mortgageAsPercOfSalary"]),
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
.maposat-icon-margin-size {
  margin: 0px 10px 0px 0px;
  font-size: 24px;
}
.maposat-titles-text-padding {
  padding: 0px 15px 0px 15px;
}
@media screen and (min-width: 460px) {
  .maposat-width {
    width: 450px;
    margin: auto;
  }
}
@media screen and (min-width: 520px) {
  .maposat-width {
    width: 480px;
    margin: auto;
  }
}
@media screen and (min-width: 780px) {
  .maposat-width {
    width: 680px;
    margin: auto;
  }
}
</style>