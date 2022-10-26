export interface Montre {
  boitier?: string;
  bracelet?: string;
  ecran?: string;
}
export const colors = {
  "#808080": "Gris",
  "#000000": "Noir",
  "#0D3625": "Vert foncé",
  "#CF3737": "Rouge",
  "#AF9D87": "Beige",
  "#50AFE4": "Bleu",
  "#7F5084": "Violet",
  "#E43F72": "Magenta",
};

export const materiaux = [
  {
    value: "../public/materiau/cuir.jpg",
    label: "Cuir",
  },
  {
    value: "../public/materiau/tissu.jpg",
    label: "Tissu",
  },
  {
    value: "../public/materiau/synthetique.jpg",
    label: "Synthétique",
  },
];
