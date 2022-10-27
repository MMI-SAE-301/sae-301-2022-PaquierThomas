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
    value: "93daca95-15e7-4459-8e87-c65c5e55a4b8",
    label: "Cuir",
  },
  {
    value: "3064fd19-069b-4977-b80d-6c91d4e02501",
    label: "Tissu",
  },
  {
    value: "../public/materiau/synthetique.jpg",
    label: "Synthétique",
  },
];
