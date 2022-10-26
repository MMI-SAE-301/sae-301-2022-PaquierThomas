<script setup lang="ts">
import FormSvg from "../../../components/FormMontre.vue";
defineProps<{
  data: string;
}>();
</script>
<template>
  <FormSvg :data="JSON.parse(data)" />
</template>