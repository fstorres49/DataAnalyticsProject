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
          Can an average American buy a house at current prices by counties?
        </p>
        <h1 class="overview-titles-text-padding">Methodology</h1>
        <p class="overview-titles-text-padding">
          In order to answer the research question, we performed an interval
          analysis. <br />First, we obtained the wages and salaries (US dollars)
          and the wage and salary employment (number of jobs) from 2010 to 2019
          from the Regional Economic Accounts (CAINC4) of the
          <a
            href="https://apps.bea.gov/regional/downloadzip.cfm"
            target="_blank"
            >Bureau of Economic Analysis - U.S Department of Commerce</a
          >. <br /><br />Second, we extrapolated wages and salaries (US dollars)
          and wage and salary employment (number of jobs) with data from 2010 to
          2019 using linear regression to obtain the 2021 data of those
          variables. We divided both results and obtained the annual average
          salary by county before taxes for 2021. <br /><br />Third, we used the
          <a
            href="https://smartasset.com/taxes/paycheck-calculator"
            target="_blank"
          >
            Smart Asset's Federal Paycheck Calculator</a
          >
          and assumed that the marital status of the average american is single,
          gets paid monthly, has a salary and is not exempt from taxes. Then, we
          developed a script that uses as input the average salary before taxes
          and extracts the monthly "take home salary" from the calculator.
          <br /><br />Finally, we divided the monthly mortgage payment for Q2
          2021, obtained from the
          <a href="https://www.nar.realtor/" target="_blank">
            National Association of Realtors</a
          >, by the monthly "take home salary" to obtain the monthly mortgage
          payment as percentage of the monthly average salary after taxes. We
          visualized the interval analysis in the Tableau Dashboard
          <a
            href="https://canamericansbuyahouse2021.netlify.app/mortgage-percentage-salary-after-taxes"
            target="_blank"
            >"Mortgage as a Percentage of Salary".</a
          >
        </p>
        <h1 class="overview-titles-text-padding">Visualizations</h1>
        <p class="overview-titles-text-padding">
          To visualize our findings, please click on the top left hamburger menu
          and select the dashboard of your interest.
        </p>
        <h1 class="overview-titles-text-padding">Definitions</h1>
        <p class="overview-titles-text-padding">
          <strong> Average American (by county): </strong><br /><br />
          An average American for this research is an American who receives the
          mean wage and salary by county, this is obtained by dividing
          wage and salaries by wage and salary employment (See definitions
          below).<br />
          <br />
          <strong> Wages and Salaries:</strong><br /><br />
          The remuneration receivable by employees (including corporate
          officers) from employers for the provision of labor services. It
          includes commissions, tips, and bonuses; employee gains from
          exercising stock options; and pay-in-kind. Judicial fees paid to
          jurors and witnesses are classified as wages and salaries. Wages and
          salaries are measured before deductions, such as social security
          contributions, union dues, and voluntary employee contributions to
          defined contribution pension plans (Bureau of Economic Analysis. U.S.
          Department of Commerce).<br />
          <br />
          <strong>Wage and Salary Employment:</strong><br /><br />
          Wage and salary employment, also referred to as wage and salary jobs,
          measures the average annual number of full-time and part-time jobs in
          each area by place of work. All jobs for which wages and salaries are
          paid are counted. Although compensation paid to jurors, expert legal
          witnesses, prisoners, and justices of the peace (for marriage fees),
          is counted in wages and salaries, these activities are not counted as
          jobs in wage and salary employment.<br />
          Corporate directorships are counted as self-employment. The following
          description of the sources and methods used in estimating wage and
          salary employment is divided into two sections: Employment in
          industries covered by unemployment insurance (UI) programs, and
          employment in industries not covered by UI (Bureau of Economic
          Analysis. U.S. Department of Commerce).<br />
          <br />
          <strong> House at Current Prices: </strong><br /><br />
          Median home price (See definition below).<br />
          <br />
          <strong>Median Home Price: </strong><br /><br />Median home value for
          the 2nd quarter of 2021 was estimated for each county. Home values
          represent the value of all homes instead of home sales. Base Price
          Subject to Population Threshold:<br />
          The most recent American Community Survey (ACS) data was used, subject
          to ACS population thresholds. This means that for counties with
          population less than 65,000, the 5-year ACS estimates were used for
          the price calculations. Respectively, for counties which have a
          population at or exceeding the population threshold of 65,000, the
          1-year ACS estimates were used (National Association of Realtors).
          <br />
          <br />
          <strong>Monthly Mortgage Payment:</strong><br />
          <br />A 10% down payment was used to calculate the monthly mortgage
          payment assuming a 30-year fixed-rate fully amortizing mortgage.
          Mortgage payments in this study include only principal and interest
          payments; actual payments, which are likely to include escrow payments
          for insurance and taxes, may be higher (National Association of
          Realtors).
        </p>
        <h1 class="overview-titles-text-padding">Data</h1>
        <p class="overview-titles-text-padding">
          This project uses data from 2 sources: <br /><br />
          1. National Association of Realtors<br />
          2. Bureau of Economic Analysis. U.S. Department of Commerce.
        </p>
        <h1 class="overview-titles-text-padding">Additional Information</h1>
        <p class="overview-titles-text-padding">
          This is the final project for the module Introduction to Data
          Analytics in Business of the
          <a href="https://www.frankfurt-school.de/en/home" target="_blank"
            >Frankfurt School of Finance & Management.</a
          >
        </p>
        <p class="overview-titles-text-padding">
          <strong>Lecturer: </strong><br /><br /><a
            href="https://www.frankfurt-school.de/en/home/research/staff/Lucas-Boettcher"
            target="_blank"
            >Prof. Dr. Lucas Böttcher</a
          >
          <br /><br />
        </p>
        <p class="overview-titles-text-padding"><strong>Group:</strong></p>
        <p class="overview-titles-text-padding">
          <a href="https://www.linkedin.com/in/francosanchezt/" target="_blank"
            >Franco Sánchez Torres</a
          >
        </p>
        <p class="overview-titles-text-padding">
          <a
            href="https://www.linkedin.com/in/parth-shrivastava-453a011a3/"
            target="_blank"
            >Parth Shrivastava</a
          >
        </p>
        <p class="overview-titles-text-padding">
          <a
            href="https://www.linkedin.com/in/rahul-singh-39a72a173/"
            target="_blank"
            >Rahul Singh</a
          >
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
  text-align: justify;
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