import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'
import Login from '../views/Login.vue'
import Register from '../views/Register.vue'
import NewPost from '../views/NewPost.vue'
import PostView from '../views/PostView.vue'
import Profil from '../views/Profil.vue'
import NewCommentInput from '../views/NewCommentInput.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/login',
    name: 'Login',
    component: Login
  },
  {
    path: '/register',
    name: 'Register',
    component: Register
  },
  {
    path: '/NewPost',
    name: 'NewPost',
    component: NewPost
  },
  {
    path: '/PostView',
    name: 'PostView',
    component: PostView
  },
  {
    path: '/NewCommentInput',
    name: 'NewCommentInput',
    component: NewCommentInput
  },
  {
    path: '/profil',
    name: 'Profil',
    component: Profil
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
