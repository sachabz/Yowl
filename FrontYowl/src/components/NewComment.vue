<template>
  <div class="NewComment items-center">
    <div class="mt-6 flex justify-center items-center">
      <div class="md:space-x-20 space-y-10 md:space-y-0">
        <button
          class="
            py-3
            px-6
            text-white
            rounded-lg
            bg-red-500
            shadow-lg
            block
            md:inline-block
          "
        >
          Ajouter un commentaire
        </button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "NewComment",
  props: {},
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
</style>
