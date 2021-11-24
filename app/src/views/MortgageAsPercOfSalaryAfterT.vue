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
          src="https://public.tableau.com/views/MonthlyMortgagePaymentasPercentageofSalaryAfterTaxes2021/Dashboard1?:showVizHome=no&:embed=true"
          width="1176"
          height="840"
        ></iframe>
      </div>
      <div class="maposat-width">
        <h1 class="maposat-titles-text-padding">
          Mortgage as Percentage of Salary After Taxes
        </h1>
        <p class="maposat-titles-text-padding">
          List of the counties with the highest monthly mortgage payment as
          percentage of salary after taxes of 2021:<br/><br/>
          1. Nantucket County, Massachusetts: 121%<br/>
          2. Kings County, New York: 108%<br/>
          3. Santa Cruz County, California: 102%<br/>
          4. Teton County, Wyoming: 102%<br/>
          5. Maui County, Hawaii: 96.2%<br/><br/>
          List of the counties with the lowest monthly mortgage payment as
          percentage of salary after taxes of 2021:<br/><br/>
          1. Todd County, South Dakota: 4.1%<br/>
          2. McDowell County, West Virginia: 5.05%<br/>
          3. Hudspeth County, Texas: 5.60%<br/>
          4. Kent County, Texas: 5.65%<br/>
          5. Cochran County, Texas: 5.80%
        </p>
        <h1 class="maposat-titles-text-padding">Data</h1>
        <p class="maposat-titles-text-padding">
          1. National Association of Realtors.<br />
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