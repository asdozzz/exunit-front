import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [vue()],
  server: {
    host: true, // Сделать сервер доступным снаружи контейнера (эквивалент 0.0.0.0)
    port: 5173, // Стандартный порт Vite
    strictPort: true, // Если порт занят, Vite не будет пытаться открыть другой случайный порт
  }
})
