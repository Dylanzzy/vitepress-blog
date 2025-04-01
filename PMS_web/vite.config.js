import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import { resolve } from 'path'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [vue()],
  resolve: {
    alias: {
      '@': resolve(__dirname, 'src'),
    },
  },
  server: {
    host: '0.0.0.0',    // 允许所有 IP 访问
    port: 8081,         // 指定端口
    https: false,       // 是否启用 HTTPS
    strictPort: true,   // 如果端口已被占用则会直接退出
    cors: true,         // 允许跨域
    open: true,         // 在开发服务器启动时自动在浏览器中打开应用程序
    proxy: {
      // 可以配置代理
      // '/api': {
      //   target: 'http://localhost:3001',
      //   changeOrigin: true,
      //   rewrite: (path) => path.replace(/^\/api/, '')
      // }
    }
  }
})
