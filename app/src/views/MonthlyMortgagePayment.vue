<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-buttons slot="start">
          <ion-menu-button></ion-menu-button>
        </ion-buttons>
        <ion-title class="ion-text-center">{{
          mortgagePaymentTitle
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
          src="https://public.tableau.com/views/Book1_16373321441680/Dashboard1?:showVizHome=no&:embed=true"
          width="1176"
          height="840"
        ></iframe>
      </div>

      <div class="mmpv-width">
        <h1 class="mmpv-titles-text-padding">Monthly Mortgage Payment</h1>
        <p class="mmpv-titles-text-padding">
          List of the counties with the highest monthly mortgage payment of Q2
          2021:<br /><br />
          1. New York County, New York: $4,656<br />
          2. Nantucket County, Massachusetts: $4,625<br />
          3. San Mateo County, California: $4,535<br />
          4. Santa Clara County, California: $4,505<br />
          5. San Francisco County, California: $4,476<br /><br />
          List of the counties with the lowest monthly mortgage payment
          of Q2 2021:<br /><br />
          1. Todd County, South Dakota: $110<br />
          2. Malette County, South Dakota: $135<br />
          3. McDowell County, West Virginia: $143<br />
          4. Kent County, Texas: $150<br />
          5. King County, Texas: $158
        </p>
        <h1 class="mmpv-titles-text-padding">Data</h1>
        <p class="mmpv-titles-text-padding">
          Copyright ©2021 “County Median Home Prices and Monthly Mortgage
          Payment.” NATIONAL ASSOCIATION OF REALTORS®. All rights reserved.
          Reprinted with permission. Q2, 2021,
          <a
            href="https://www.nar.realtor/research-and-statistics/housing-statistics/county-median-home-prices-and-monthly-mortgage-payment"
            target="_blank"
            >https://www.nar.realtor/research-and-statistics/housing-statistics/county-median-home-prices-and-monthly-mortgage-payment</a
          ><br />
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
  name: "MonthlyMortgagePayment",
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
    ...mapState("data", ["mortgagePaymentTitle"]),
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
.mmp-icon-margin-size {
  margin: 0px 10px 0px 0px;
  font-size: 24px;
}
.mmpv-titles-text-padding {
  padding: 0px 15px 0px 15px;
}
@media screen and (min-width: 460px) {
  .mmpv-width {
    width: 450px;
    margin: auto;
  }
}
@media screen and (min-width: 520px) {
  .mmpv-width {
    width: 480px;
    margin: auto;
  }
}
@media screen and (min-width: 780px) {
  .mmpv-width {
    width: 680px;
    margin: auto;
  }
}
</style>