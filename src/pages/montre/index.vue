<script setup lang="ts">
import ListeBaskets from "../../components/ListeBaskets.vue";
import { supabase, user } from "@/supabase";
</script>
<template>
  <div class="p-2">
    <h2>Liste des montres perso de l'utlisateur</h2>
    <ListeBaskets />
    <section v-if="user">
      <h2>
          un extrait de vos montres (<RouterLink
          class="text-red-600 underline"
          to="/basket"
          >Toutes les voir</RouterLink
          >)
      </h2>
      <ListeBaskets class=" flex flex-wrap gap-2" :max="3" />
  </section>
  </div>
</template>