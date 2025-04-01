<template>
  <n-config-provider>
    <n-message-provider>
      <n-layout>
        <!-- <n-layout-header class="header">
          <div class="header-title">系统规划推动看板-W{{ getCurrentWeek() }}</div>
        </n-layout-header> -->
        <n-layout-content class="content">
          <router-view></router-view>
        </n-layout-content>
      </n-layout>
    </n-message-provider>
  </n-config-provider>
</template>

<script>
import { NConfigProvider, NMessageProvider, NLayout, NLayoutHeader, NLayoutContent } from 'naive-ui'

export default {
  name: 'App',
  components: {
    NConfigProvider,
    NMessageProvider,
    NLayout,
    NLayoutHeader,
    NLayoutContent
  },
  methods: {
    getCurrentWeek() {
      const now = new Date()
      const start = new Date(now.getFullYear(), 0, 1)
      const diff = now - start
      const oneWeek = 1000 * 60 * 60 * 24 * 7
      const week = Math.floor(diff / oneWeek) + 1
      return week
    }
  }
}
</script>

<style scoped>
.header {
  padding: 10px 20px;
  border-bottom: 1px solid #eee;
  display: flex;
  align-items: center;
  height: 64px;
  background-color: #fff;
}

.header-title {
  font-size: 20px;
  font-weight: bold;
  color: #1890ff;
}

.content {
  padding: 20px;
  background-color: #f5f5f5;
  min-height: calc(100vh - 64px);
}
</style>
