<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-buttons slot="start">
          <ion-menu-button></ion-menu-button>
        </ion-buttons>
        <ion-title class="ion-text-center">{{ overviewTitle }}</ion-title>

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

    <ion-content :fullscreen="true">
      <div class="overview-width">
        <h1 class="overview-titles-text-padding">Research Question</h1>
        <p class="overview-titles-text-padding">
          Can an average american buy a house at current prices by counties?
        </p>
        <h1 class="overview-titles-text-padding">Visualizations</h1>
        <p class="overview-titles-text-padding">
          To visualize our findings, please click on the top left hamburger menu
          and select the dashboard of your interest.
        </p>
        <h1 class="overview-titles-text-padding">Definitions</h1>
        <p class="overview-titles-text-padding">
          Average American:<br /><br />
          Americans who have wage and salary employment, also referred to as
          wage and salary jobs, measures the average annual number of full-time
          and part-time jobs in each area by place of work. All jobs for which
          wages and salaries are paid are counted. Although compensation paid to
          jurors, expert legal witnesses, prisoners, and justices of the peace
          (for marriage fees), is counted in wages and salaries, these
          activities are not counted as jobs in wage and salary employment.
          <br />Corporate directorships are counted as self-employment. The
          following description of the sources and methods used in estimating
          wage and salary employment is divided into two sections: Employment in
          industries covered by unemployment insurance (UI) programs, and
          employment in industries not covered by UI. (Bureau of Economic
          Analysis. U.S. Department of Commerce.)<br />
          <br />
          Median Home Price: <br /><br />Median home value for the 2nd quarter
          of 2021 was estimated for each county. Home values represent the value
          of all homes instead of home sales. Base Price Subject to Population
          Threshold:<br />
          The most recent American Community Survey (ACS) data was used, subject
          to ACS population thresholds. This means that for counties with
          population less than 65,000, the 5-year ACS estimates were used for
          the price calculations. Respectively, for counties which have a
          population at or exceeding the population threshold of 65,000, the
          1-year ACS estimates were used. (National Association of Realtors).
          <br />
          <br />
          Monthly Mortgage Payment:<br />
          <br />A 10% down payment was used to calculate the monthly mortgage
          payment assuming a 30-year fixed-rate fully amortizing mortgage.
          Mortgage payments in this study include only principal and interest
          payments; actual payments, which are likely to include escrow payments
          for insurance and taxes, may be higher. (National Association of
          Realtors).
        </p>
        <h1 class="overview-titles-text-padding">Data</h1>
        <p class="overview-titles-text-padding">
          This project uses data from 2 sources: <br /><br />
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
  name: "Overview",
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
  padding: 0px 15px 0px 15px;
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