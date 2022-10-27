<script setup lang="ts">
import FormSvg from "../../../components/FormMontre.vue";
import HeaderVue from "../../../components/header.vue"
import FooterVue from "../../../components/footer.vue"
defineProps<{
  id: string;
}>();
</script>
<template>
  <HeaderVue/>
  <FormSvg :id="id" />
  <FooterVue/>
</template>