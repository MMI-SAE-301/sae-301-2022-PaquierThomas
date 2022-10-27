<script setup lang="ts">
import ListeMontre from "../../components/ListeMontre.vue";
import { supabase, user } from "@/supabase";
</script>



<template>
  <!-- Header -->
    <header>
      <nav class="bg-white border-gray-200 px-4 lg:px-6 py-5 dark:bg-black">
        <div class="flex flex-wrap justify-between items-center mx-auto max-w-screen-xl">
            <a href="/" class="flex items-center">
                <img src="../../../public/image/Logo.svg" class="mr-3 h-6 sm:h-20" alt="TikTak Logo" />
            </a>
            <div class="flex lg:order-2">
                <!-- Menu mobile -->
                <button data-collapse-toggle="mobile-menu-2" type="button" class="inline-flex items-center p-2 ml-1 text-sm text-gray-500 rounded-lg lg:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="mobile-menu-2" aria-expanded="false">
                    <span class="sr-only">Ouvrir menu principal</span>
                    <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path></svg>
                    <svg class="hidden w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                </button>
            </div>
            <div class="hidden items-end w-full lg:flex justify-between lg:w-auto lg:order-2 text-xl" id="mobile-menu-2">
                <ul class="flex flex-col mt-4 font-medium lg:flex-row lg:space-x-8 lg:mt-0">
                    <li>
                        <a href="/" class="block py-2 pr-4 pl-3 text-white rounded bg-primary-700 lg:dark:hover:text-orange-600 lg:bg-transparent  lg:p-0 dark:text-gray-400" aria-current="page">Accueil</a>
                    </li>
                    <li>
                        <a href="/montre/new" class="block py-2 pr-4 pl-3 text-white border-b border-gray-100 hover:bg-gray-50  lg:hover:bg-transparent lg:border-0 lg:hover:text-primary-700 lg:p-0 dark:text-gray-400 lg:dark:hover:text-orange-600 dark:hover:bg-orange-600 dark:hover:text-white lg:dark:hover:bg-transparent dark:border-orange-600">Personnaliser</a>
                    </li>
                    <li>
                        <a href="/montre" class="block py-2 pr-4 pl-3 text-white border-b border-gray-100 hover:bg-gray-50 lg:text-orange-600 lg:hover:bg-transparent lg:border-0 lg:hover:text-primary-700 lg:p-0 dark:text-gray-400 lg:dark:hover:text-orange-600 dark:hover:bg-orange-600 dark:hover:text-white lg:dark:hover:bg-transparent dark:border-orange-600">Vos montres</a>
                    </li>
                    <li>
                        <a href="/connexion" class="block py-2 pr-4 pl-3 text-white border-b border-gray-100 hover:bg-gray-50 lg:hover:bg-transparent lg:border-0 lg:hover:text-primary-700 lg:p-0 dark:text-gray-400 lg:dark:hover:text-orange-600 dark:hover:bg-orange-600 dark:hover:text-white lg:dark:hover:bg-transparent dark:border-orange-600">Se connecter</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
  </header>



  <!-- Titre page -->
  <div class="mt-5">
      <h2 class=" absolute text-4xl font-bold ml-12 items-center mt-32 text-white">Liste de vos montres</h2>
      <img class="w-screen" src="\public\image\montre.png" alt="image montre fond">
  </div>

  <!-- Contenu page -->
  <div class="p-2">
    <section class="">
      <h2 class="font-bold text-3xl my-12 ml-6">Consultez vos créations</h2>
      
      <ListeMontre class="gap-32 place-items-center justify-center grid grid-cols-3" :max="9" />
    </section>
    <div class="grid place-items-center mt-32">
      <p class="font-bold text-2xl mb-4 line-clamp-2 ">Vous ne trouvez pas de montre? <span class="text-orange-500">Customisez</span> la votre!</p>
      <div class="relative bg-black w-1/6 h-14 rounded-lg">
        <a href="/montre/new"><span class="w-full h-full flex justify-center items-center text-3xl font-black text-white">Customiser</span></a>
      </div>
    </div>

  </div>

  <!-- Footer -->
  <footer class="p-12 bg-white sm:p-6 dark:bg-black mt-12 ">
    <div class="md:flex md:justify-between">
        <div class="grid grid-cols-2 gap-8 sm:gap-6 sm:grid-cols-3 ml-12 mt-8">
            <div>
                <h2 class="mb-6 text-sm font-semibold text-gray-900 uppercase dark:text-orange-600">Plan du site</h2>
                <ul class="text-gray-600 dark:text-gray-400">
                    <li class="mb-4">
                        <a href="/" class="hover:underline dark:hover:text-orange-600">Accueil</a>
                    </li>
                    <li class="mb-4">
                        <a href="/montre/new" class="hover:underline dark:hover:text-orange-600">Personnaliser</a>
                    </li>
                    <li class="mb-4">
                        <a href="#" class="hover:underline dark:hover:text-orange-600">Vos montres</a>
                    </li>
                    <li class="mb-4">
                        <a href="/connexion" class="hover:underline dark:hover:text-orange-600">Se connecter</a>
                    </li>
                </ul>
            </div>
            <div>
                <h2 class="mb-6 text-sm font-semibold text-gray-900 uppercase dark:text-orange-600">Parties légales</h2>
                <ul class="text-gray-600 dark:text-gray-400">
                    <li class="mb-4">
                        <a href="https://github.com/themesberg/flowbite" class="hover:underline dark:hover:text-orange-600 ">Mentions légales</a>
                    </li>
                    <li class="mb-4">
                        <a href="https://discord.gg/4eeurUVvTy" class="hover:underline dark:hover:text-orange-600">Politique de confidentialité</a>
                    </li>
                    <li class="mb-4">
                        <a href="https://discord.gg/4eeurUVvTy" class="hover:underline dark:hover:text-orange-600">Conditions d'utilisation</a>
                    </li>
                    <li class="mb-4">
                        <a href="https://discord.gg/4eeurUVvTy" class="hover:underline dark:hover:text-orange-600">Conditions générale de vente</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="mb-6 md:mb-0">
            <a href="/" class="flex items-center">
                <img src="../../../public/image/Logo.svg" class="mr-48 mt-10 h-6 sm:h-full " alt="TikTak Logo" />
            </a>
        </div>
    </div>
    
  </footer>
</template>