import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import {
  create,
  NMessageProvider,
  NConfigProvider
} from 'naive-ui'

const naive = create({
  components: [
    NMessageProvider,
    NConfigProvider
  ]
})

const app = createApp(App)
app.use(router)
app.use(naive)
app.mount('#app') 