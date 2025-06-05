// Configuración de Astro
import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

export default defineConfig({
  site: 'https://example.com',
  integrations: [
    tailwind({
      // Configuración básica de tailwind
      config: {
        applyBaseStyles: false,
      },
    }),
  ],
  // Configuración del servidor
  server: {
    port: 4000,
    host: true,
    open: true,
  },
  // Configuración de Vite
  vite: {
    ssr: {
      noExternal: ['@astrojs/mdx']
    }
  }
});
