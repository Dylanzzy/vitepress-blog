<template>
  <n-card class="stat-card">
    <div class="stat-header">{{ title }}</div>
    <div class="stat-content">
      <n-progress
        type="circle"
        :percentage="percentage"
        :color="color"
        :height="80"
        :width="80"
      >
        <div class="stat-number">
          {{ value }}
          <span v-if="change" class="stat-change">{{ change }}</span>
        </div>
      </n-progress>
    </div>
  </n-card>
</template>

<script setup lang="ts">
import { NCard, NProgress } from 'naive-ui'

defineProps<{
  title: string
  value: string | number
  percentage: number
  color: string
  change?: string
}>()
</script>

<style scoped>
.stat-card {
  min-width: 180px;
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
  transition: all 0.3s ease;
}

.stat-card:hover {
  transform: translateY(-4px);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

.stat-header {
  font-size: 16px;
  margin-bottom: 16px;
  color: #666;
  font-weight: 500;
}

.stat-content {
  display: flex;
  justify-content: center;
  padding: 16px 0;
}

.stat-number {
  font-size: 28px;
  font-weight: bold;
  text-align: center;
  color: #333;
}

.stat-change {
  font-size: 14px;
  color: #52c41a;
  margin-left: 4px;
  font-weight: 500;
}
</style>
