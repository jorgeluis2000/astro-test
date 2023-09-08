import { defineConfig } from 'astro/config';
import react from "@astrojs/react";
import tailwind from "@astrojs/tailwind";

const PORT_HOST = process.env.PORT_HOST ? Number(process.env.PORT_HOST) : 3000

// https://astro.build/config
export default defineConfig({
  site: process.env.HOSTNAME ? `https://${process.env.HOSTNAME}` : `http://localhost:${PORT_HOST}`,
  server: {
    port: PORT_HOST
  },
  output: 'static',
  integrations: [tailwind(), react()]
});