import { createRouter, createWebHistory } from 'vue-router'
import ProjectHomepage from '../components/ProjectHomepage.vue'
import FileUpload from '../components/FileUpload.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'Homepage',
      component: ProjectHomepage,
    },
    {
      path: '/fileupload',
      name: 'FileUpload',
      component: FileUpload,
    },
  ],
})

export default router
