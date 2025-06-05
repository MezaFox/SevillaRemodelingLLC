import { defineConfig } from 'vite';

export default defineConfig({
  server: {
    port: 4000,
    strictPort: true,
    open: true,
    host: 'localhost'
  },
  preview: {
    port: 4000,
    strictPort: true,
  },
  build: {
    outDir: 'dist',
    assetsDir: 'assets',
    emptyOutDir: true,
  },
});
