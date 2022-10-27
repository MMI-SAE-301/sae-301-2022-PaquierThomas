<script setup lang="ts">
    import type { Montre } from "@/types";
    import { ref } from "vue";
    import montrecarre from "./montrecarre.vue";
    import { colors } from "@/types";
    // import { materiaux } from "@/types";
    import FormKitListColors from "./FormKitListColors.vue"
    import { supabase } from "../supabase";
    import { materiaux } from "@/types";
    import { useRouter } from "vue-router";

    let user = supabase.auth.user()
    const router = useRouter();
    
    const props = defineProps<{
        data?: Montre;
        id?: string;
    }>();

    const montre = ref<Montre>(props.data ?? {});

    if (props.id) {
    // On charge les données de la maison
    let { data, error } = await supabase
        .from("montre")
        .select("*")
        .eq("id", props.id);
    if (error || !data)
        console.log("n'a pas pu charger le table Montre :", error);
    else montre.value = data[0];
    }

    async function upsertMontre(dataForm, node) {
        const { data, error } = await supabase.from("montre").upsert(dataForm);
        if (error) node.setErrors([error.message]);
        else {
            node.setErrors([]);
            router.push({ name: "montre-edit-id", params: { id: data[0].id } });
     
        }
        console.log("erreur", error);
        console.log("data", data);
    }

</script>
<template>
    <div class="p-2 flex">
        <div class=" w-1/2 border-4 border-black">
            <montrecarre class="" v-bind="montre" id="profil"/>
        </div>
        <div class="w-1/2 border-4 border-black p-4">
            <FormKit type="form" v-model="montre" :config="{
    classes: {
      label: 'super-red'
    }
  }" :submit-attrs="{ classes: { input: ' flex justify-center  bg-black p-1 rounded-xl w-full text-[20px] font-semibold  text-white', outer:'mt-5' } }"
            @submit="upsertMontre">
            
                <!-- Si on veut cacher le champ id il suffit de mettre outer-class="none" -->
                <FormKitListColors name="boitier" label="boitier" />
                <FormKit name="materiaux_boitier" label="materiau boitier" value="src/assets/cuir.jpg"  type="radio" :options="materiaux" :sections-schema="{
                    inner: { $el: null},
                    decorator: { $el: null},
                }"
                input-class="peer sr-only"
                options-class="flex gap-1"
                >
                    <template #label="context">
                        <div class="w-14 h-14 rounded-full border-4 peer-checked:border-red-600" :style="{ backgroundImage: `url(${context.option.value})`}"/>
                        <span class="sr-only"> {{ context.option.label }}</span>
                    </template>
                </FormKit>
                <FormKitListColors name="bracelet" label="bracelet" />
                <FormKit name="materiaux_bracelet" label="materiau bracelet" value="src/assets/cuir.jpg"  type="radio" :options="materiaux" :sections-schema="{
                    inner: { $el: null},
                    decorator: { $el: null},
                }"
                input-class="peer sr-only"
                options-class="flex gap-1"
                >
                    <template #label="context">
                        <div class="w-14 h-14 rounded-full border-4 peer-checked:border-red-600" :style="{ backgroundImage: `url(${context.option.value})`}"/>
                        <span class="sr-only"> {{ context.option.label }}</span>
                    </template>
                </FormKit>
                <FormKitListColors name="ecran" label="ecran" label-class="font-bold text-red" />
                <FormKit name="favori" label="ajouter en favori" type="checkbox" wrapper-class="flex p-2 gap-2"/>
                
            </FormKit>
        </div>
        
    </div>
</template>