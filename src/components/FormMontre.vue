<script setup lang="ts">
    import type { Montre } from "@/types";
    import { ref } from "vue";
    import montrecarre from "./montrecarre.vue";
    import { colors } from "@/types";
    // import { materiaux } from "@/types";
    import FormKitListColors from "./FormKitListColors.vue"
    import { supabase } from "../supabase";

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
        .eq("id_montre", props.id);
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
    <div class="p-2">
        <div class="carousel w-64">
            <montrecarre class="carousel-item w-64" v-bind="montre" id="profil"/>
        </div>
        <FormKit type="form" v-model="montre" :submit-attrs="{ classes: { input: 'bg-red-300 p-1 rounded' } }"
        @submit="upsertMontre">
            
            <!-- <FormKit label="materiau" value="src/assets/cuir.jpg"  type="radio" :options="materiaux" :sections-schema="{
                inner: { $el: null},
                decorator: { $el: null},
            }"
            input-class="peer sr-only"
            options-class="flex gap-1"
            >
                <template #label="context">
                    <div class="h-6 w-6 rounded-full border-2 peer-checked:border-red-600" :style="{ backgroundImage: `url(${context.option.value})`}"/> 
                    <span class="sr-only"> {{ context.option.label }}</span>
                </template>   
            </FormKit> -->

            <!-- Si on veut cacher le champ id il suffit de mettre outer-class="none" -->
            <FormKitListColors name="boitier" label="boitier" />
            <FormKitListColors name="bracelet" label="bracelet" />
            <FormKitListColors name="ecran" label="ecran" />
        </FormKit>
    </div>
</template>