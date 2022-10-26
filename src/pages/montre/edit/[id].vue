<script setup lang="ts">
import FormSvg from "../../../components/FormMontre.vue";
defineProps<{
  id: string;
}>();
</script>
<template>
  <FormSvg :id="id" />
</template>