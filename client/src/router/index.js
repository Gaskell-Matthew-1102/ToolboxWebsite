import { createRouter, createWebHistory } from 'vue-router'
import ProjectHomepage from '../components/ProjectHomepage.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'Homepage',
      component: ProjectHomepage,
    },
  ],
})

export default router
