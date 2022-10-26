<script setup lang="ts">
    import { colors } from "@/types";

    defineProps<{
    name?: string;
    label?: string;
    }>();
</script>

<template>

  <FormKit :name="name"
    :label="label"
    value="#FFFFFF"
    type="radio"
    :config="{classes:{
        label:'font-semibold'
    }}"
    :options="colors" :sections-schema="{
                inner: { $el: null},
                decorator: { $el: null},
            }"
            input-class="peer sr-only"
            options-class="flex gap-4"
            >
                <template #label="context">
                    <div class="w-14 h-14 rounded-full border-4 peer-checked:border-red-600" :style="{backgroundColor: context.option.value}"/> <span class="sr-only"> {{ context.option.label }}</span>
                </template>   
    </FormKit>

</template>