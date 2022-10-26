<script setup lang="ts">
import ListeMontre from "../../components/ListeMontre.vue";
import { supabase, user } from "@/supabase";
</script>



<template>

  <div class="mt-5">
      <h2 class="text-white">Liste de vos montres</h2>
      <img class="w-screen" src="" alt="image montre fond">
  </div>
  <div class="p-2">
    <section class="">
      <h2>Consultez vos créations</h2>
      
      <ListeMontre class="gap-32 items-center justify-center grid grid-cols-3" :max="9" />
    </section>
    <div class="">
      <p class="font-bold p-2">Vous ne trouvez pas de montre? <span class="text-orange-500">Customisez</span> la votre!</p>
      <div class="relative bg-black w-1/6 h-14 rounded-lg">
          <span class="w-full h-full flex justify-center items-center text-3xl font-black text-white">Customiser</span>
      </div>
    </div>

  </div>
</template>