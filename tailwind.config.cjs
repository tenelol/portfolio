/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["apps/web/**/*.html"],
  theme: {
    extend: {
      fontFamily: {
        display: ["Fraunces", "Times New Roman", "serif"],
        body: ["Space Grotesk", "Segoe UI", "sans-serif"],
      },
    },
  },
  plugins: [require("daisyui")],
  daisyui: {
    themes: ["autumn"],
  },
};
