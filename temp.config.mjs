// Configuración temporal de Astro
import { defineConfig } from 'astro/config';

export default defineConfig({
  // Configuración mínima
  server: {
    port: 4000,
    host: 'localhost',
    open: true
  },
  site: 'http://localhost:4000',
  integrations: []
});
