<script setup lang="ts">
import { supabase, user } from '../supabase';
import LoginLogout from '../components/LoginLogout.vue'

</script>

<template>
    <section class="h-screen">
    <div class="container px-6 py-12  h-screen ">
      <div class="flex justify-center items-center flex-wrap h-full g-6 text-black border-4 rounded-xl border-orange-800">
        <div class="md:w-8/12 lg:w-5/12 lg:ml-20">
          <div class="mb-10">
            <a href="/"><img class="mb-6 ml-[-40px]" src="/icone/Logo_noir.svg" alt="logo du site"></a>
            <h2 class="font-semibold text-5xl">Content de vous revoir!</h2>
            <h3 class="mt-3 ml-2 font-medium text-xl text-neutral-600">Continue avec google ou facebook</h3>
          </div>
          <form>
            <a
              class="px-7 py-3 text-black hover:border-orange-600 border-2 rounded-xl border-black font-semibold  text-sm leading-snug uppercase shadow-md hover:shadow-lg focus:shadow-lg focus:outline-none focus:ring-0 active:shadow-lg transition duration-150 ease-in-out w-full flex justify-center items-center"
              style="background-color: white"
              href="#!"
              role="button"
              data-mdb-ripple="true"
              data-mdb-ripple-color="light"
              @pointerdown="supabase.auth.signIn({provider: 'google'})"
            >
              <!-- Google -->
              <img class="mr-6" src="/icone/Logo-google.svg" alt="logo google">
              Se connecter avec google
            </a>

            <a
              class="px-7 py-3 hover:border-orange-600 text-black border-2 rounded-xl border-black font-semibold text-sm leading-snug uppercase shadow-md hover:shadow-lg focus:shadow-lg focus:outline-none focus:ring-0 active:shadow-lg transition duration-150 ease-in-out w-full flex justify-center items-center mt-5"
              style="background-color: white"
              href="#!"
              role="button"
              data-mdb-ripple="true"
              data-mdb-ripple-color="light"
              @pointerdown="supabase.auth.signIn({provider: 'facebook'})"
            >
              <!-- Facebook -->
              <img src="/icone/facebook-alt.svg" class="mr-4" alt="logo facebook">
              Se connecter avec Facebook
            </a>

            
            <div
              class="flex items-center my-8 before:flex-1 before:border-t before:border-gray-300 before:mt-0.5 after:flex-1 after:border-t after:border-gray-300 after:mt-0.5"
            >
              <p class="text-center font-semibold mx-4 mb-0">OU</p>
            </div>

            <!-- box email -->
            <div class="mb-6">
              <input
                type="text"
                class="form-control block w-full px-4 py-2 text-xl font-normal text-black bg-white bg-clip-padding border-2 border-solid border-black rounded transition ease-in-out m-0 focus:text-black focus:bg-white focus:border-orange-600 focus:outline-none"
                placeholder="Votre adresse mail"
              />
            </div>

            <!-- Mot de passe box -->
            <div class="mb-6">
              <input
                type="password"
                class="form-control block w-full px-4 py-2 text-xl font-normal text-black bg-white bg-clip-padding border-2 border-solid border-black rounded transition ease-in-out m-0 focus:text-black focus:bg-white focus:border-orange-600 focus:outline-none"
                placeholder="Password"
              />
            </div>

            <div class="flex justify-between items-center mb-6">
              <div class="form-group form-check">
                <input
                  type="checkbox"
                  class="form-check-input appearance-none h-4 w-4 border border-gray-300 rounded-sm bg-white checked:bg-orange-600 checked:border-orange-600 focus:outline-none transition duration-200 mt-1 align-top bg-no-repeat bg-center bg-contain float-left mr-2 cursor-pointer"
                  id="exampleCheck3"
                  checked
                />
                <label class="form-check-label inline-block font-bold text-gray-800" for="exampleCheck2"
                  >Se souvenir de moi</label
                >
              </div>
              <a
                href="#!"
                class="text-black hover:text-orange-600 underline underline-offset-3 focus:text-orange-600 active:text-orange-600 duration-200 transition ease-in-out"
                >Mot de passe oublié?</a
              >
            </div>

            <!-- Submit button -->
            <button
              type="submit"
              class="inline-block px-7 py-3 bg-black text-white font-medium text-sm leading-snug uppercase rounded shadow-md hover:bg-orange-600 hover:shadow-lg focus:bg-orange-600 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-orange-600 active:shadow-lg transition duration-150 ease-in-out w-full"
              data-mdb-ripple="true"
              data-mdb-ripple-color="light"
            >
              Se connecter
            </button>


          </form>
        </div>
        <!-- Image -->
        <div class="md:w-8/12 lg:w-6/12 md:mb-0 ml-8">
          <img
            src="../assets/image/montre_connexion.png"
            class="w-full"
            alt="image montre connecte connexion"
          />
        </div>
      </div>
    </div>
  </section>
</template>