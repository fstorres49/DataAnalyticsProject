<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-buttons slot="start">
          <ion-menu-button></ion-menu-button>
        </ion-buttons>
        <ion-title class="ion-text-center">{{ averageSalaryTitle }}</ion-title>
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
      <div class="hv-tableau-visualization">
        <iframe
          frameborder="0"
          style="border: 0"
          src="https://public.tableau.com/views/Avg_SalarybyCounty2021Estimate/Dashboard1?:showVizHome=no&:embed=true"
          width="1176"
          height="840"
        ></iframe>
      </div>

      <div class="asev-width">
        <h1 class="asev-titles-text-padding">
          Annual Average Salary Before Taxes
        </h1>
        <p class="asev-titles-text-padding">
          List of the counties with the highest annual average salary before
          taxes of 2021:<br /><br />
          1. Santa Clara County, California: $141,476<br />
          2. San Mateo County, California: $135,354<br />
          3. San Francisto County, California: $129,149<br />
          4. New York County, New York: $127,990<br />
          5. North Slope Borough, Alaska: $113,232<br /><br />
          List of the counties with the lowest annual average salary before
          taxes of 2021:<br /><br />
          1. Clay County, West Virginia: $25,349<br />
          2. Knott County, Kentucky: $25,610<br />
          3. Issaquena County, Mississippi: $25,849<br />
          4. Delta County, Texas: $27,164<br />
          5. Malette County, South Dakota: $27,519
        </p>
        <h1 class="asev-titles-text-padding">Data</h1>
        <p class="asev-titles-text-padding">
          Bureau of Economic Analysis. U.S. Department of Commerce.
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
  name: "AverageSalaryEstimate",
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
    ...mapState("data", ["averageSalaryTitle"]),
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
.ave-icon-margin-size {
  margin: 0px 10px 0px 0px;
  font-size: 24px;
}
.asev-titles-text-padding {
  padding: 0px 15px 0px 15px;
}
@media screen and (min-width: 460px) {
  .asev-width {
    width: 450px;
    margin: auto;
  }
}
@media screen and (min-width: 520px) {
  .asev-width {
    width: 480px;
    margin: auto;
  }
}
@media screen and (min-width: 780px) {
  .asev-width {
    width: 680px;
    margin: auto;
  }
}
</style>