<template>
  <div class="profil">
    <h1 class="mt-10 mb-5 text-3xl uppercase text-gray-600">Mon profil</h1>
    <div class="flex justify-center items-center m-10">
      <form
        class="
          p-10
          bg-green-50
          rounded
          flex
          justify-center
          items-center
          flex-col
          shadow-md
        "
      >
        <div
          id="mail"
          class="
            mb-5
            p-3
            w-80
            focus:border-purple-700
            rounded
            border-2
            outline-none
          "
        >
          <h2 class="text-gray-600">Mon adresse Mail :</h2>
          <p class="block text-gray-400">xxxx@de.com</p>
          <i class="fa fa-edit text-red-500 hover:text-red-700"></i>
        </div>
        <div
          id="city"
          class="
            mb-5
            p-3
            w-80
            focus:border-purple-700
            rounded
            border-2
            outline-none
          "
        >
          <h2 class="text-gray-600">Ma ville :</h2>
          <p class="text-gray-400">XX</p>
          <i class="fa fa-edit text-red-500 hover:text-red-700"></i>
        </div>
        <div
          id="pays"
          class="
            mb-5
            p-3
            w-80
            focus:border-purple-700
            rounded
            border-2
            outline-none
          "
        >
          <h2 class="text-gray-600">Mon Pays :</h2>
          <p class="text-gray-400">France</p>
          <i class="fa fa-edit text-red-500 hover:text-red-700"></i>
        </div>
        <div
          id="birth"
          class="
            mb-5
            p-3
            w-80
            focus:border-purple-700
            rounded
            border-2
            outline-none
          "
        >
          <h2 class="text-gray-600">Ma date de naissance :</h2>
          <p class="text-gray-400">xx/xx/xxxx</p>
          <i class="fa fa-edit text-red-500 hover:text-red-700"></i>
        </div>
        <div
          id="avatar"
          class="
            mb-5
            p-3
            w-80
            focus:border-purple-700
            rounded
            border-2
            outline-none
          "
        >
          <h2 class="text-gray-600">Changer mon avatar</h2>
          <i class="fa fa-edit text-red-500 hover:text-red-700"></i>
        </div>
      </form>
    </div>
    <div class="text-red-500 hover:text-red-600">
      <i
        class="
          fa fa-trash
          mb-10
          text-red-500
          hover:text-red-700
          inline-block
          mr-3
        "
      ></i>
      <h1 class="mb-10 text-red-500 underline hover:text-red-700 inline-block">
        Supprimer mon compte
      </h1>
    </div>
  </div>
</template>

<script>
export default {
  name: "ProfilComponent",
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
</style>
