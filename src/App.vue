<template>

  <!-- Affiche les pages -->
  <Suspense>
    <router-view class="m-2 border-2 p-2 " />
  </Suspense>
</template>

<script setup lang="ts">
import { Bars3Icon } from "@heroicons/vue/20/solid";
</script>
