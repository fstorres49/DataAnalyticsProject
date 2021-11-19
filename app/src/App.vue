<template>
  <ion-app>
    <IonSplitPane content-id="main-content" when="false">
      <ion-menu content-id="main-content" type="overlay">
        <ion-router-outlet />
        <ion-header>
          <ion-toolbar translucent>
            <ion-title @click="closer()">Data Analytics Project</ion-title>
          </ion-toolbar>
        </ion-header>
        <ion-content>
          <ion-list>
            <ion-item @click="closer()" button router-link="/overview">
              <ion-icon
                class="app-icon-margin-size"
                :icon="readerOutline"
              ></ion-icon>
              Overview
            </ion-item>
            <ion-item
              @click="closer()"
              button
              router-link="/median-home-prices"
            >
              <ion-icon
                class="app-icon-margin-size"
                :icon="logoTableau"
              ></ion-icon>
              Median Home Prices
            </ion-item>
            <ion-item
              @click="closer()"
              button
              router-link="/monthly-mortgage-payment"
            >
              <ion-icon
                class="app-icon-margin-size"
                :icon="logoTableau"
              ></ion-icon>

              Mortgage Payment
            </ion-item>
            <ion-item
              @click="closer()"
              button
              router-link="/average-american-salary-estimate"
            >
              <ion-icon
                class="app-icon-margin-size"
                :icon="logoTableau"
              ></ion-icon>
              Average Salary
            </ion-item>
            <ion-item
              @click="closer()"
              button
              router-link="/mortgage-percentage-salary-after-taxes"
            >
              <ion-icon
                class="app-icon-margin-size"
                :icon="logoTableau"
              ></ion-icon>
              Mortgage as % of Salary
            </ion-item>

            <ion-item @click="closer()" button router-link="/conclusions">
              <ion-icon
                class="app-icon-margin-size"
                :icon="readerOutline"
              ></ion-icon>
              Conclusions
            </ion-item>
            <ion-item
              @click="closer()"
              button
              href="https://www.github.com/fstorres49/DataAnalyticsProject/"
              target="_blank"
            >
              <ion-icon
                class="app-icon-margin-size"
                :icon="logoGithub"
              ></ion-icon>
              Repository
            </ion-item>
          </ion-list>
          <ion-menu-toggle auto-hide="true"> </ion-menu-toggle>
        </ion-content>
      </ion-menu>
      <ion-router-outlet id="main-content"></ion-router-outlet>
    </IonSplitPane>
  </ion-app>
</template>

<script>
import { logoGithub, logoTableau, readerOutline } from "ionicons/icons";
import { defineComponent } from "vue";
import {
  IonApp,
  IonRouterOutlet,
  IonContent,
  IonHeader,
  IonIcon,
  IonItem,
  IonList,
  IonMenu,
  IonMenuToggle,
  IonSplitPane,
  IonTitle,
  IonToolbar,
  menuController,
} from "@ionic/vue";
export default defineComponent({
  name: "App",
  components: {
    IonApp,
    IonRouterOutlet,
    IonContent,
    IonHeader,
    IonIcon,
    IonItem,
    IonList,
    IonMenuToggle,
    IonMenu,
    IonSplitPane,
    IonTitle,
    IonToolbar,
  },
  setup() {
    return {
      logoGithub,
      logoTableau,
      readerOutline,
    };
  },
  methods: {
    closer() {
      menuController.close("start");
    },
  },
});
</script>
<style scoped>
.app-icon-margin-size {
  margin: 0px 10px 0px 0px;
  font-size: 24px;
}
</style>