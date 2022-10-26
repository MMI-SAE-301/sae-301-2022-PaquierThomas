<script setup lang="ts">
import { supabase, user } from '../supabase';
</script>

<template>
<div>
    <button v-if="user" @pointerdown="supabase.auth.signOut()">
        Se déconnecter ({{user.email}})
    </button>

    <div v-else class="g-2">
        <button @pointerdown="supabase.auth.signIn({provider: 'facebook'})">
            Se connecter avec Facebook
        </button>
        <button @pointerdown="supabase.auth.signIn({provider: 'google'})">
            Se connecter avec Google
        </button>
    </div>
    
</div>
</template> 