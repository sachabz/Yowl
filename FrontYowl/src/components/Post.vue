<template>
  <div class="post">
    <div class="justify-center items-center">
      <div
        class="
          bg-white
          rounded-lg
          border-2 border-gray-400
          w-3/5
          max-w-md
          flex flex-col
          justify-center
          sm:justify-start
          items-center
          sm:items-start sm:flex-row
          space-x-2
          p-8
        "
      >
        <div class="">
          <div
            class="
              top-section
              flex flex-col
              sm:flex-row
              space-x-5
              text-center
              sm:text-left
            "
          >
            <h1 class="font-bold text-md">{{ titre }}</h1>
          </div>
          <div
            class="
              top-section
              flex flex-col
              sm:flex-row
              space-x-5
              text-center
              sm:text-left
            "
          >
            <p class="text-gray-400 m-0.5">
              {{ theme }}
              <span>posté par {{ auteur }} le {{ date }} </span>
            </p>
          </div>
          <div
            class="
              text-sm text-gray-600
              font-semibold
              text-justify
              sm:text-left
            "
          >
            <p>
              {{ contenu }}
            </p>
          </div>
          <div class="social-media mb-5">
            <ul class="flex justify-between mr-5 mt-2">
              <li class="hover:text-gray-700">
                <a href="#">
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
                      d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"
                    />
                  </svg>
                </a>
              </li>
              <li class="hover:text-gray-700">
                <a href="#">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    viewBox="0 0 20 20"
                    fill="#FE462D"
                  >
                    <path
                      d="M15 8a3 3 0 10-2.977-2.63l-4.94 2.47a3 3 0 100 4.319l4.94 2.47a3 3 0 10.895-1.789l-4.94-2.47a3.027 3.027 0 000-.74l4.94-2.47C13.456 7.68 14.19 8 15 8z"
                    />
                  </svg>
                </a>
              </li>
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
                      d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-8l-4-4m0 0L8 8m4-4v12"
                    />
                  </svg>
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
  name: "Post",
  data() {
    return {
      countLike: 0,
    };
  },
  props: {
    titre: String,
    theme: String,
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