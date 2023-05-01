import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

export default defineConfig({
  server: {   
    port: 80
  },
  plugins: [vue()],
  resolve: {
    alias: {
      '@': '/src',
    },
  },
})
