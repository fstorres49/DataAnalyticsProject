import { createRouter, createWebHistory } from '@ionic/vue-router';

const routes = [
  {
    path: '/',
    redirect: '/overview'
  },
  {
    path: '/overview',
    component: () => import("../views/Overview.vue")
  },
  {
    path: '/median-home-prices',
    component: () => import("../views/MedianHomePrices.vue")
  },
  {
    path: '/average-american-salary-estimate',
    component: () => import("../views/AverageSalaryEstimate.vue")
  },
  {
    path: '/monthly-mortgage-payment',
    component: () => import("../views/MonthlyMortgagePayment.vue")
  },
  {
    path: '/conclusions',
    component: () => import("../views/Conclusions.vue")
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
