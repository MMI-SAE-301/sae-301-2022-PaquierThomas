<script setup lang="ts">
    import { supabase, user } from "@/supabase";
    import montrecarre from "./montrecarre.vue";
const props = defineProps<{
  max?: number;
}>();
const { data: Montre, error } = await supabase
  .from("montre")
  .select("*")
  .limit(props.max ?? 3);
if (error) {
  console.log("n'a pas pu récupérer les montres", { error });
}
</script>
<template>
  <ul class="flex">
    <li v-for="montre in Montre" :key="montre.id">
      <router-link
        :to="{ name: 'montre-edit-id', params: { id: montre.id } }"
      >
        <montrecarre class="w-[420px] content-center border-4 border-orange-600 bg-black py-10" v-bind="montre" />
      </router-link>
    </li>
  </ul>

</template>