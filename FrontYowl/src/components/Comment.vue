<template>
  <div class="comment">
    <div class="flex justify-center items-center">
      <div
        class="
          bg-green-50
          rounded-lg
          border-0 border-gray-400
          w-full
          flex flex-col
          justify-center
          sm:justify-start
          items-center
          sm:items-start sm:flex-row
          space-x-2
          p-8
          mt-6
        "
      >
        <div class="">
          <div
            class="
              top-section
              flex flex-col
              sm:flex-row
              text-center
              sm:text-left
            "
          >
            <h1 class="font-bold text-md">{{ auteur }}</h1>
            <p class="font-bold text-gray-400">. {{ date }}</p>
          </div>
          <div
            class="
              text-sm text-gray-600
              font-semibold
              text-justify
              sm:text-left
            "
          >
            <p>{{ contenu }}</p>
          </div>
          <div class="social-media mb-5">
            <ul class="flex justify-between mr-5 mt-2">
              <li class="hover:text-gray-700">
                <a href="#" @click="like" class="inline-block">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-6 w-6"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="#FE462D"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"
                    />
                  </svg>
                </a>
                <p class="inline-block content-start">{{ countLike }}</p>
              </li>
              <li class="hover:text-gray-700">
                <a href="#">
                  <p class="text-red-500">répondre</p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Comment",
  data() {
    return {
      countLike: 0,
    };
  },
  props: {
    auteur: String,
    date: String,
    contenu: String,
  },
  methods: {
    like() {
      this.countLike += 1;
    },
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
</style>
