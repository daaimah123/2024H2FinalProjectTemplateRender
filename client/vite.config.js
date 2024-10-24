import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// add when setting proxy
import path from 'path';

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  // production env set up
  server: {
    proxy: {
      '/api': {
        target: "http://localhost:8080",
        changeOrigin: true,
        secure: false,
      }
    }
  }
})
