// Configuración de Astro
import { defineConfig } from "astro/config";
import tailwind from "@astrojs/tailwind";
import icon from "astro-icon";

export default defineConfig({
  site: "https://example.com",
  integrations: [
    tailwind({
      // Configuración básica de tailwind
      config: {
        applyBaseStyles: false,
      },
    }),
    icon(),
  ],
  // Configuración del servidor
  server: {
    port: 4000,
    host: "localhost",
    open: false,
  },
  // Configuración de Vite
  vite: {
    ssr: {
      noExternal: ["@astrojs/mdx"],
    },
  },
});
